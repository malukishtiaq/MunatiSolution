class Endpoints {
  Endpoints._();

  static const String baseURL = 'https://munati.xyz';

  static const int receiveTimeout = 5000;

  static const int connectionTimeout = 3000;

  static const String users = '/users';

  static const String deleteAccessToken =
      "/api/delete-access-token?access_token=";

  static const String setBrowser = "/set-browser-cookie?access_token=";

  static const String getUserData = "/api/get-user-data?access_token=";

  static const String getManyUsersData =
      "/api/get-many-users-data?access_token=";

  static const String getUserAlbums = "/api/get-user-albums?access_token=";

  static const String createProduct = "/api/create-product?access_token=";

  static const String getProducts = "/api/get-products?access_token=";

  static const String getEvents = "/api/get-events?access_token=";

  static const String goToEvent = "/api/go-to-event?access_token=";

  static const String interestEvent = "/api/interest-event?access_token=";

  static const String createEvent = "/api/create-event?access_token=";

  static const String followUser = "/api/follow-user?access_token=";

  static const String followRequestAction =
      "/api/follow-request-action?access_token=";

  static const String blockUser = "/api/block-user?access_token=";

  static const String postActions = "/api/post-actions?access_token=";

  static const String likePage = "/api/like-page?access_token=";

  static const String joinGroup = "/api/join-group?access_token=";

  static const String createStory = "/api/create-story?access_token=";

  static const String deleteStory = "/api/delete-story?access_token=";

  static const String setChatTypingStatus =
      "/api/set-chat-typing-status?access_token=";

  static const String changeChatColor = "/api/change-chat-color?access_token=";

  static const String getArticles = "/api/get-articles?access_token=";

  static const String getGroupData = "/api/get-group-data?access_token=";

  static const String getPageData = "/api/get-page-data?access_token=";

  static const String getPostData = "/api/get-post-data?access_token=";

  static const String updateUserData = "/api/update-user-data?access_token=";

  static const String updateGroupData = "/api/update-group-data?access_token=";

  static const String updatePageData = "/api/update-page-data?access_token=";

  static const String getMovies = "/api/get-movies?access_token=";

  static const String createGroup = "/api/create-group?access_token=";

  static const String createPage = "/api/create-page?access_token=";

  static const String getNearbyUsers = "/api/get-nearby-users?access_token=";

  static const String getBlockedUsers = "/api/get-blocked-users?access_token=";

  static const String getStories = "/api/get-stories?access_token=";

  static const String getUserStories = "/api/get-user-stories?access_token=";

  static const String deleteConversation =
      "/api/delete-conversation?access_token=";

  static const String getCommunity = "/api/get-community?access_token=";

  static const String getGeneralData = "/api/get-general-data?access_token=";

  static const String getUserSuggestions =
      "/api/get-user-suggestions?access_token=";

  static const String sendMessage = "/api/send-message?access_token=";

  static const String getSiteSettings = "/api/get-site-settings?access_token=";

  static const String auth = "/api/auth/";

  static const String socialLogin = "/api/social-login";

  static const String createAccount = "/api/create-account/";

  static const String resetPasswordEmail = "/api/send-reset-password-email/";

  static const String getNewsFeedCookie =
      "/app_api.php?application=phone&type=set_c&c=";

  static const String getNewsFeed = "/get_news_feed?user_id=";

  static const String getNewsFeedGroup = "/get_news_feed?group_id=";

  static const String getNewsFeedPage = "/get_news_feed?page_id=";

  static const String getNewsFeedEvent = "/get_news_feed?event_id=";

  static const String getNewsFeedSavedPost = "/get_news_feed?save_posts=true";

  static const String getNewsFeedHashtag = "/get_news_feed?hashtag=";

  static const String getNewsFeedPost = "/get_news_feed?post_id=";

  static const String getSearch = "/api/search?access_token=";

  static const String getActivities = "/api/get-activities?access_token=";

  static const String deleteUser = "/api/delete-user?access_token=";

  static const String poke = "/api/poke?access_token=";

  static const String albums = "/api/albums?access_token=";

  static const String gift = "/api/gift?access_token=";

  static const String getPost = "/api/posts?access_token=";

  static const String getPopularPost = "/api/most_liked?access_token=";

  static const String getPostComments = "/api/comments?access_token=";

  static const String groups = "/api/groups?access_token=";

  static const String getFriends = "/api/get-friends?access_token=";

  static const String events = "/api/events?access_token=";

  static const String getUsersFriends =
      "/app_api.php?application=phone&type=get_user_list_info";

  static const String editProduct = "/api/edit-product?access_token=";

  static const String groupChat = "/api/group_chat?access_token=";

  static const String reactions = "/api/get-reactions?access_token=";

  static const String twoFactor = "/api/two-factor";

  static const String activeAccountSms = "/api/active_account_sms";

  static const String funding = "/api/funding?access_token=";

  static const String job = "/api/job?access_token=";

  static const String commonThings = "/api/common_things?access_token=";

  static const String pageChat = "/api/page_chat?access_token=";

  static const String pollPost = "/api/vote_up?access_token=";

  static const String ratePage = "/api/rate_page?access_token=";

  static const String boostPage = "/api/boost_page?access_token=";

  static const String pageReviews = "/api/page_reviews?access_token=";

  static const String upgrade = "/api/upgrade?access_token=";

  static const String updateTwoFactor = "/api/update_two_factor?access_token=";

  static const String games = "/api/games?access_token=";

  static const String sessions = "/api/sessions?access_token=";

  static const String reportComment = "/api/report_comment?access_token=";

  static const String getGroupMembers = "/api/get_group_members?access_token=";

  static const String makeGroupAdmin = "/api/make_group_admin?access_token=";

  static const String removeGroupMembers =
      "/api/delete_group_member?access_token=";

  static const String getNotInGroupMembers =
      "/api/not_in_group_member?access_token=";

  static const String getNotInPageMembers =
      "/api/not_in_page_member?access_token=";

  static const String makePageAdmin = "/api/make_page_admin?access_token=";

  static const String deleteGroup = "/api/delete_group?access_token=";

  static const String deletePage = "/api/delete_page?access_token=";

  static const String groupAdd = "/api/group_add?access_token=";

  static const String pageAdd = "/api/page_add?access_token=";

  static const String blogsComment = "/api/blogs?access_token=";

  static const String moviesComment = "/api/movies_comments?access_token=";

  static const String getGroups = "/api/get-my-groups?access_token=";

  static const String recommended = "/api/fetch-recommended?access_token=";

  static const String getBlogById = "/api/get-blog-by-id?access_token=";

  static const String getChat = "/api/get_chats?access_token=";

  static const String apiWallet = "/api/wallet?access_token=";

  static const String apiProfileVerify = "/api/verification?access_token=";

  static const String createNewAudioCall =
      "/app_api.php?application=phone&type=create_audio_call";

  static const String createNewVideoCall =
      "/app_api.php?application=phone&type=create_video_call";

  static const String answerVideoCall =
      "/app_api.php?application=phone&type=video_call_answer";

  static const String answerAudioCall =
      "/app_api.php?application=phone&type=audio_call_answer";

  static const String checkForAnswer =
      "/app_api.php?application=phone&type=check_for_answer";

  static const String apiGetUsersList =
      "/app_api.php?application=phone&type=get_users_list";

  static const String apiGetMemories = "/api/get_memories?access_token=";

  static const String apiDownloadInfo = "/api/download_info?access_token=";

  static const String apiUploadBankRecipe = "/api/bank?access_token=";

  static const String apiInvitation = "/api/invitation?access_token=";

  static const String apiMyActivities = "/api/my_activities?access_token=";

  static const String apiOffers = "/api/offer?access_token=";

  static const String apiSearchForPosts = "/api/search_for_posts?access_token=";

  static const String apiNearby = "/api/nearby?access_token=";

  static const String apiWithdraw = "/api/withdraw?access_token=";

  static const String apiDeleteMessage = "/api/delete_message?access_token=";

  static const String apiIsActive = "/api/is-active";

  static const String apiAddNewPost = "/api/new_post?access_token=";

  static const String getUserMessage = "/api/get_user_messages?access_token=";

  static const String apiCreateLive = "/api/live?access_token=";

  static const String apiRazorPay = "/api/razorpay?access_token=";

  static const String apiPayStack = "/api/paystack?access_token=";

  static const String apiCashFree = "/api/cashfree?access_token=";

  static const String apiPaySera = "/api/paysera?access_token=";

  static const String getPages = "/api/get-my-pages?access_token=";

  static const String getUserDataByUsername =
      "/api/get-user-data-username?access_token=";

  static const String reportUser = "/api/report_user?access_token=";

  static const String getEventById = "/api/get_event_by_id?access_token=";

  static const String stripe = "/api/stripe?access_token=";

  static const String apiAds = "/api/ads?access_token=";

  static const String getBoost = "/api/get_boost?access_token=";

  static const String reportPage = "/api/report_page?access_token=";

  static const String reportGroup = "/api/report_group?access_token=";

  static const String stopNotify = "/api/stop_notify?access_token=";

  static const String getFriendsBirthday =
      "/api/get_friends_birthday?access_token=";

  static const String hidePost = "/api/hide_post?access_token=";

  static const String resetPassword = "/api/reset_password";

  static const String validationUser = "/api/validation_user";

  static const String getStoryById = "/api/get_story_by_id?access_token=";

  static const String getStoryViews = "/api/get_story_views?access_token=";

  static const String reactStory = "/api/react_story?access_token=";

  static const String getInvites = "/api/get_invites?access_token=";

  static const String muteChatsInfo = "/api/mute?access_token=";

  static const String getArchivedChats =
      "/api/get_archived_chats?access_token=";

  static const String getPinChats = "/api/get_pin_chats?access_token=";

  static const String getPinMessage = "/api/get_pin_message?access_token=";

  static const String pinMessage = "/api/pin_message?access_token=";

  static const String reactMessage = "/api/react_message?access_token=";

  static const String agora = "/api/agora?access_token=";

  static const String apiSendAgoraCallAction =
      "/app_api.php?application=phone&type=call_agora_actions";

  static const String apiCreateAgoraCallEvent =
      "/app_api.php?application=phone&type=create_agora_call";

  static const String apiCheckForAgoraAnswer =
      "/app_api.php?application=phone&type=check_agora_for_answer";

  static const String testCashfree = "https://test.cashfree.com";

  static const String productionCashfree = "https://api.cashfree.com";
}
