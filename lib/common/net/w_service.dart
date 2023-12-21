import 'package:dio/dio.dart';
import 'package:p_wanandroid/common/net/api_response.dart';
import 'package:p_wanandroid/common/net/page_model.dart';
import 'package:p_wanandroid/common/net/single_page_model.dart';
import 'package:p_wanandroid/data/model/category_entity.dart';
import 'package:p_wanandroid/data/model/project_list_entity.dart';
import 'package:p_wanandroid/data/model/project_tab_entity.dart';
import 'package:p_wanandroid/data/model/system_entity.dart';
import 'package:p_wanandroid/data/model/user_entity.dart';
import 'package:retrofit/retrofit.dart';

part 'w_service.g.dart';

@RestApi(baseUrl: "https://www.wanandroid.com")
abstract class WanService {
  factory WanService(Dio dio, {String baseUrl}) = _WanService;
  @GET("/project/tree/json")
  Future<SinglePageModel<ProjectTabEntity>> getProjectTab();

  @GET("/article/list/{page}/json")
  Future<ApiResponse<PageModel<ProjectListEntity>>> getRecommendList(
      @Path("page") int page, @Query("page_size") int pageSize);

  @GET("/article/list/{page}/json")
  Future<ApiResponse<PageModel<ProjectListEntity>>> getArticleList(
      @Path("page") int page, @Query("cid") int cid);

  @GET("/project/list/{page}/json")
  Future<ApiResponse<PageModel<ProjectListEntity>>> getProjectList(
      @Path("page") int page, @Query("cid") int cid);

  @GET("/navi/json")
  Future<PageModel<CategoryEntity>> getCategory();

  @GET("/tree/json")
  Future<PageModel<SystemEntity>> getSystem();

  @POST("/user/login")
  @FormUrlEncoded()
  Future<ApiResponse<UserEntity>> login(
    @Field("username") String username,
    @Field("password") String password,
  );

  /// 登出
  /// @param username  用户名
  /// @param password  密码
  /// @param repassword  确认密码
  @GET("/user/logout/json")
  Future<ApiResponse<dynamic>> logout();
}
