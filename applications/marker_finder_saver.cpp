#include <cstdio>
#include <cstdlib>
#include <fstream>
///ROS
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <cv_bridge/cv_bridge.h>
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/Image.h>
///Opencv
#include <opencv2/highgui/highgui.hpp>
//Aruco
#include <aruco/aruco.h>
#include <aruco/cvdrawingutils.h>



using namespace std;
using namespace cv;
using namespace aruco;


//aruco
MarkerDetector marker_detector;
CameraParameters camera_params;
vector<Marker> markers;
float marker_size;


int i=0;


struct markerFound{
  int id;
  double x_pose;
  double y_pose;
  double z_pose;
};

string listen_id;
int listen_id_to_int;
markerFound all_markers[255];

void callback(const sensor_msgs::ImageConstPtr& msgRGB,const sensor_msgs::ImageConstPtr& msgD); // listening rgbd sensor 
void rosMarkerFinder(cv::Mat rgb , cv::Mat depth); //marker finder


int main(int argc, char** argv){    

   if(argc != 3)
  {
    fprintf(stderr, "Usage: %s <camera calibration file> <marker size>\n", argv[0]);
    exit(0);
  }

  camera_params.readFromXMLFile(argv[1]);
  marker_size = stof(argv[2]);
  marker_detector.setDictionary("ARUCO_MIP_36h12", 0);

  //ROS steps
  for(int k=0; k<=254; k++){
    all_markers[k].id = 0;
  }

  ros::init(argc, argv, "marker_finder_ros");
  ros::start();
  
  ros::NodeHandle nh;
  message_filters::Subscriber<sensor_msgs::Image> rgb_sub(nh, "/camera/rgb/image_raw", 1);
  message_filters::Subscriber<sensor_msgs::Image> depth_sub(nh, "camera/depth/image_raw", 1);
  typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::Image> MySyncPolicy;
  //ApproximateTime takes a queue size as its constructor argument, hence MySyncPolicy(10)
  message_filters::Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), rgb_sub,depth_sub);
  sync.registerCallback(boost::bind(&callback, _1, _2));

  ros::spin();


  ofstream arq;
  arq.open("all_markers.txt");
  for(int k=0; k<=255; k++){
    if(all_markers[k].id==0) continue;
      arq<<all_markers[k].id<<endl;
  }
  return 0;
 }

void callback(const sensor_msgs::ImageConstPtr& msgRGB,const sensor_msgs::ImageConstPtr& msgD){

  // Copy the ros image message to cv::Mat.
  cv_bridge::CvImageConstPtr cv_ptrRGB;
  try{
      cv_ptrRGB = cv_bridge::toCvShare(msgRGB);
  }
  catch (cv_bridge::Exception& e){
    ROS_ERROR("cv_bridge exception: %s", e.what());
    return;
  }

  cv_bridge::CvImageConstPtr cv_ptrD;
  try{
    cv_ptrD = cv_bridge::toCvShare(msgD);
  }
  catch (cv_bridge::Exception& e){
    ROS_ERROR("cv_bridge exception: %s", e.what());
    return;
  }
  rosMarkerFinder(cv_ptrRGB->image, cv_ptrD->image);
}

void rosMarkerFinder(cv::Mat rgb , cv::Mat depth){

  //Detect and view Aruco markers
  marker_detector.detect(rgb, markers, camera_params, marker_size); 

  for (size_t j = 0; j < markers.size(); j++){
    //save all markers in a vetor 
    all_markers[markers[j].id].id = markers[j].id;
    markers[j].draw(rgb, Scalar(0,0,255), 1);
    //use to put names on ids cout<<markers[j].id<<" ";
    CvDrawingUtils::draw3dAxis(rgb, markers[j], camera_params);
    stringstream ss;
    ss << "m" << markers[j].id;
  }
   
  depth = depth/5;
  cv::imshow("OPENCV_WINDOW", rgb);
  cv::imshow("OPENCV_WINDOW_DEPTH", depth);
  cv::waitKey(1);

  i++;
}


