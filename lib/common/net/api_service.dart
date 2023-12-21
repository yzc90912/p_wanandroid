import 'package:dio/dio.dart';
import 'package:p_wanandroid/common/net/api_response.dart';
import 'package:p_wanandroid/data/model/cubit_entity.dart';
import 'package:p_wanandroid/data/model/message_detail_entity.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://api.chexun.com")
abstract class MPService {
  factory MPService(Dio dio, {String baseUrl}) = _MPService;

  @GET("/searchV5")
  Future<ApiResponse<CubitEntity>> getMessageList(@Query("pn") int pageNum,
      @Query("ps") int pageSize, @Query("q") String q, @Query('t') int t);

  @GET("/pc/items/info")
  Future<ApiResponse<MessageDetailEntity>> getMessageDetail(
      @Query("entityId") int entityId);

  // @POST("/system/appUser/indexList")
  // @FormUrlEncoded()
  // Future<PageModel<List<FindEntity>>> findList(
  //     @Field("pageNum") int pageNum, @Field("pageSize") int pageSize);

  // @POST("/system/appUser/searchList")
  // @FormUrlEncoded()
  // Future<PageModel<RecommendEntity>> getRecommendList(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("nationality") String nationality,
  //     @Field("type") int type);

  // @POST("/system/appUser/getMessage")
  // Future<ApiResponse<ConversationEntity>> getNotifyData();

  // @POST("/system/appUser/getUserInfo")
  // Future<ApiResponse<UserEntity>> getUserData();

  // @POST("/system/appUser/indexList")
  // @FormUrlEncoded()
  // Future<PageModel<FindEntity>> getFindList(
  //     @Field("pageNum") int pageNum, @Field("pageSize") int pageSize);

  // @POST("/system/nationality/findList")
  // @FormUrlEncoded()
  // Future<PageModel<NationalityEntity>> getRecommendTabs(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("status") String status);

  // @POST("/system/trends/getAllList")
  // @FormUrlEncoded()
  // Future<PageModel<CircleListEntity>> getDynamicList(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("sort") String sort);

  // @POST("/system/likeLog/getTrendsList")
  // @FormUrlEncoded()
  // Future<PageModel<CircleListEntity>> getDynamicLikeList(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("sort") String sort);

  // @POST("/system/collectLog/getTrendsList")
  // @FormUrlEncoded()
  // Future<PageModel<CircleListEntity>> getDynamicCollectList(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("sort") String sort);

  // @POST("/system/trends/getMeList")
  // @FormUrlEncoded()
  // Future<PageModel<CircleListEntity>> getMyDynamicList(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("sort") String sort);

  // @POST("/system/trends/getList")
  // @FormUrlEncoded()
  // Future<PageModel<CircleListEntity>> getUserDynamicList(
  //     @Field("pageNum") int pageNum,
  //     @Field("pageSize") int pageSize,
  //     @Field("sort") String sort,
  //     @Field("userId") String userId);

  // @POST("/system/likeLog/save")
  // @FormUrlEncoded()
  // Future<ApiResponse> likeDynamic(
  //     @Field("valueId") String valueId, @Field("type") int type);

  // @POST("/system/collectLog/save")
  // @FormUrlEncoded()
  // Future<ApiResponse> collectDynamic(
  //     @Field("valueId") int valueId, @Field("type") int type);

  // @POST("/system/trends/delete")
  // @FormUrlEncoded()
  // Future<ApiResponse> delDynamic(@Field("id") int id);

  // @POST("/system/followLog/save")
  // @FormUrlEncoded()
  // Future<ApiResponse> attentionUser(@Field("quiltUserId") String quiltUserId);

  // // @GET("article/top/json")
  // // Future<ApiResponse<List<ArticleModel>>> getTopArticles();

  // // @GET("article/list/{page}/json")
  // // Future<ApiResponse<PageModel<ArticleModel>>> getArticles(@Path() int page);

  // // @POST("user/login")
  // // @FormUrlEncoded()
  // // Future<ApiResponse<LoginModel>> login(
  // //     @Field("username") String username, @Field("password") String password);

  // // @GET('user/lg/userinfo/json')
  // // Future<ApiResponse<UserModel>> getUserInfo();
}
