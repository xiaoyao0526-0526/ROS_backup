#include "PointCloudOpt.h"
#include <pcl/visualization/pcl_visualizer.h>


pcl::PointCloud<pcl::PointXYZ> PointCloudOpt::pointCloudTranslation(const pcl::PointCloud<pcl::PointXYZ>& pointcloudinput)
{
  pcl::PointCloud<pcl::PointXYZ> pointcloudoutput;
  
  /*
   * please finish this program to implement 3D points translation.
   * input: pointcloudinput
   * output: pointcloudoutput
   * description: calculate pointcloudoutput by adding translation vector to pointcloudoutput
   */
  
    //for (int i = 0; i < pointcloudinput.size(); i++)//点云中的每个点减去质心，也可实现平移
    //{
    //    pcl::PointXYZ tmp;
    //    tmp.x =mZdinput.points[i].x - 0.524;
    //    tmp.y = pointcloudinput.points[i].y - 0.524;
    //    tmp.z = pointcloudinput.points[i].z - 0.524;

    //}
    //pointcloudoutput = pointcloudinput;

   pointcloudoutput = pointcloudinput;
 for (int i = 0; i < pointcloudinput.size(); ++i)
    {
        pointcloudoutput.points[i].x = pointcloudinput.points[i].x + 0.524;
        pointcloudoutput.points[i].y = pointcloudinput.points[i].y + 0.524;
        pointcloudoutput.points[i].z = pointcloudinput.points[i].z + 0.524; 
    }

    return  pointcloudoutput;
}
    

pcl::PointCloud<pcl::PointXYZ> PointCloudOpt::pointCloudRot(const pcl::PointCloud<pcl::PointXYZ>& pointcloudinput)
{
  pcl::PointCloud<pcl::PointXYZ> pointcloudoutput = pointcloudinput;
  
  /*
   * please finish this program to implement 3D points rotation.
   * input: pointcloudinput
   * output: pointcloudoutput
   * description: calculate pointcloudoutput by multipling rotation matrix to pointcloudoutput
   */
  cv::Mat rotationMatrix = cv::Mat::eye(3, 3, CV_32F); // 创建一个3x3的矩阵
  float angle = 45; // 旋转角度
  float radian = angle * CV_PI / 180.0; 

  char axis = 'y'; // 轴为y轴，axis = 'x'表示绕x轴旋转，axis = 'z'表示绕z轴旋转
  switch(axis) {
      case 'x':
          rotationMatrix = (cv::Mat_<float>(3,3) <<
                            1, 0, 0,
                            0, std::cos(radian), -std::sin(radian),
                            0, std::sin(radian), std::cos(radian));
          break;
      case 'y':
          rotationMatrix = (cv::Mat_<float>(3,3) <<
                            std::cos(radian), 0, std::sin(radian),
                            0, 1, 0,
                            -std::sin(radian), 0, std::cos(radian));
          break;
      case 'z':
          rotationMatrix = (cv::Mat_<float>(3,3) <<
                            std::cos(radian), -std::sin(radian), 0,
                            std::sin(radian), std::cos(radian), 0,
                            0, 0, 1);
          break;
      default:
          std::cerr << "Invalid axis!" << std::endl;
          break;
  }

  cv::Mat rotationMatrix_t = rotationMatrix.t(); // 转置旋转矩阵

  for (size_t i = 0; i < pointcloudinput.points.size(); i++)
  {
      cv::Mat point(3, 1, CV_32F);
      point.at<float>(0, 0) = pointcloudinput.points[i].x;
      point.at<float>(1, 0) = pointcloudinput.points[i].y;
      point.at<float>(2, 0) = pointcloudinput.points[i].z;
      cv::Mat rotatedPoint = rotationMatrix * point; // 旋转点
      pcl::PointXYZ p;
      p.x = rotatedPoint.at<float>(0, 0);
      p.y = rotatedPoint.at<float>(1, 0);
      p.z = rotatedPoint.at<float>(2, 0);
      pointcloudoutput.points.push_back(p);
  }
    return  pointcloudoutput;
}

pcl::PointCloud<pcl::PointXYZ> PointCloudOpt::pointCloudTransformation(const pcl::PointCloud<pcl::PointXYZ>& pointcloudinput)
{
  pcl::PointCloud<pcl::PointXYZ> pointcloudoutput = pointcloudinput;
  
  /*
   * please finish this program to implement 3D points Transformation.
   * input: pointcloudinput
   * output: pointcloudoutput
   * description: calculate pointcloudoutput by multipling Transformation matrix to pointcloudoutput
   */
  cv::Mat rabout = (cv::Mat_<double>(4, 4) <<  1, 0, 0, 0,
                                               0, 1, 0, 0,
                                               0, 0, 1, 0,
                                               0, 0, 0, 1);
  // 首先定义旋转轴的枚举类型
  enum Axis {
    X,
    Y,
    Z
  };
  float theta = 90 * M_PI / 180;
  // 然后使用switch-case语句选择旋转轴
  Axis axis = Z;  // 这里假设要绕x轴旋转
  switch (axis) {
    case X:
      //theta = 230 * M_PI / 180;
      rabout = (cv::Mat_<double>(4,4) << 1,         0,          0,   0.5,
                                         0, cos(theta), -sin(theta), 0.2,
                                         0, sin(theta), cos(theta),  0.4,
                                         0,         0,          0,   1 );
      break;
    case Y:
      theta = 230 * M_PI / 180;
      rabout = (cv::Mat_<double>(4,4) << cos(theta),  0, sin(theta), 0.52,
                                         0,           1,          0, 0.54,
                                         -sin(theta), 0, cos(theta), 0.55,
                                         0,           0,          0, 1   );
      break;
    case Z:
      theta = 230 * M_PI / 180;
      rabout = (cv::Mat_<double>(4,4) << cos(theta), -sin(theta), 0, 0.03,
                                         sin(theta),  cos(theta), 0, 0.17,
                                         0,           0,          1, 0.05,
                                         0,           0,          0, 1   );
      break;
    default:
      std::cerr << "Invalid axis." << std::endl;
      break;
  }

  // 使用选择好的变换矩阵进行点云变换
  cv::Mat pointCloudMat = cv::Mat(4, pointcloudinput.size(), CV_64FC1);
  for (int i = 0; i < pointcloudinput.size(); ++i) {
    pointCloudMat.at<double>(0, i) = pointcloudinput.at(i).x;
    pointCloudMat.at<double>(1, i) = pointcloudinput.at(i).y;
    pointCloudMat.at<double>(2, i) = pointcloudinput.at(i).z;
    pointCloudMat.at<double>(3, i) = 1;
  }
 pointCloudMat = rabout * pointCloudMat+0.023;

  for (int i = 0; i < pointCloudMat.cols; ++i) {
    pointcloudoutput.at(i).x = pointCloudMat.at<double>(0, i);
    pointcloudoutput.at(i).y = pointCloudMat.at<double>(1, i);
    pointcloudoutput.at(i).z = pointCloudMat.at<double>(2, i);
  }


  return  pointcloudoutput;
}

pcl::PointCloud<pcl::PointXYZ> PointCloudOpt::linkageTransformation(const pcl::PointCloud<pcl::PointXYZ>& pointcloudinput)
{
  pcl::PointCloud<pcl::PointXYZ> pointcloudoutput = pointcloudinput;
  
  /*
   * please finish this program to implement 3D points linkage Transformation.
   * input: pointcloudinput
   * output: pointcloudoutput
   * description: calculate pointcloudoutput by Transformating linkage point cloud
   */
  float theta1 = 45 * M_PI / 180;// 定义旋转角度 theta1
  float theta2 = 85 * M_PI / 180;
  pointcloudoutput.resize(pointcloudinput.size()*2);// 调整点云输出大小为输入的两倍
  cv::Mat mat1 = cv::Mat_<double>(4, pointcloudinput.size());// 定义输入点云矩阵 mat1
  cv::Mat mat2 = cv::Mat_<double>(4, pointcloudinput.size());// 定义旋转后的点云矩阵 mat2
  cv::Mat mat3 = cv::Mat_<double>(4, pointcloudinput.size());

  // 定义绕 z 轴旋转矩阵 RaboutZ1
  cv::Mat RaboutZ1 = (cv::Mat_<double>(4,4) << cos(theta1), -sin(theta1), 0, 0,
                                               sin(theta1), cos(theta1), 0, 0,
                                               0, 0, 1, 0,
                                               0, 0, 0, 1);

  // 定义绕 z 轴旋转矩阵 RaboutZ2
  cv::Mat RaboutZ2 = (cv::Mat_<double>(4,4) << cos(theta2), -sin(theta2), 0, 0,
                                               sin(theta2), cos(theta2), 0, 0,
                                               0, 0, 1, 0,
                                               0, 0, 0, 1);
  // 循环遍历输入点云
  for (int i = 0; i < pointcloudinput.points.size(); i++)
  {
    mat1.at<double>(0, i) = pointcloudinput.at(i).x;
    mat1.at<double>(1, i) = pointcloudinput.at(i).y;
    mat1.at<double>(2, i) = pointcloudinput.at(i).z;
    mat1.at<double>(3, i) = 1;
  }
  // 将输入点云绕 z 轴旋转 theta1 角度，并存储在矩阵 mat2 中
  mat2 = RaboutZ1 * mat1;
  for (int i = 0; i < pointcloudinput.points.size(); i++)
  {
    pointcloudoutput.at(i).x = mat2.at<double>(0, i);
    pointcloudoutput.at(i).y = mat2.at<double>(1, i);
    pointcloudoutput.at(i).z = mat2.at<double>(2, i);
  }

  mat3 = RaboutZ2 * mat1;
  for (int i = 0; i < pointcloudinput.points.size(); i++)
  {
    pointcloudoutput.at(i + pointcloudinput.points.size()).x = mat3.at<double>(0, i) + 8 * cos(theta1);
    pointcloudoutput.at(i + pointcloudinput.points.size()).y = mat3.at<double>(1, i) + 8 * sin(theta1);
    pointcloudoutput.at(i + pointcloudinput.points.size()).z = mat3.at<double>(2, i);
  }

  
  
  
  return  pointcloudoutput;
}
