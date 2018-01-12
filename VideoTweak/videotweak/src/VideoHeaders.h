//
//  VideoHeaders.h
//  Video
//
//  Created by swae on 2018/1/13.
//  Copyright © 2018年 alpface. All rights reserved.
//

#ifndef VideoHeaders_h
#define VideoHeaders_h

#import <UIKit/UIKit.h>

@class NSDictionary, NSNumber, NSString;
@class SSHttpOperation, ArticleAPNsManager;

@protocol ArticleAPNsManagerDelegate <NSObject>
    
    @optional
- (BOOL)apnsManager:(ArticleAPNsManager *)arg1 canPresentViewControllerToUserID:(NSString *)arg2;
- (void)apnsManager:(ArticleAPNsManager *)arg1 customAction:(NSString *)arg2;
- (void)apnsManager:(ArticleAPNsManager *)arg1 handleUserInfoContainsID:(NSString *)arg2;
    @end

@protocol TTGetTopNaviControllerProtocol <NSObject>
- (UINavigationController *)getAppTopNavigationController;
- (UINavigationController *)navigationController;
@end


//@interface TTVUserAccount ()
//    {
//        BOOL _followed;
//        BOOL _subscribed;
//        BOOL _isVerified;
//        NSString *_screenName;
//        NSString *_userDesc;
//        NSString *_avatarURLString;
//        NSString *_verifiedContent;
//        NSString *_shareURL;
//        NSString *_mediaID;
//        NSString *_userID;
//        NSNumber *_cursor;
//        NSDictionary *_authInfo;
//        int _fansCount;
//        int _followCount;
//        int _videoCount;
//        int _playCount;
//        int _shareCount;
//        int _likeCount;
//        TTVUserAuthInfo *_userAuthInfo;
//    }
//
//+ (id)keyMapper;
//+ (BOOL)propertyIsOptional:(id)arg1;
//    @property(copy, nonatomic) NSDictionary *authInfo; // @synthesize authInfo=_authInfo;
//    @property(copy, nonatomic) NSString *avatarURLString; // @synthesize avatarURLString=_avatarURLString;
//    @property(copy, nonatomic) NSNumber *cursor; // @synthesize cursor=_cursor;
//    @property(nonatomic) int fansCount; // @synthesize fansCount=_fansCount;
//    @property(nonatomic) int followCount; // @synthesize followCount=_followCount;
//    @property(nonatomic) BOOL followed; // @synthesize followed=_followed;
//- (BOOL)isLoginUser;
//    @property(nonatomic) BOOL isVerified; // @synthesize isVerified=_isVerified;
//    @property(nonatomic) int likeCount; // @synthesize likeCount=_likeCount;
//    @property(copy, nonatomic) NSString *mediaID; // @synthesize mediaID=_mediaID;
//    @property(nonatomic) int playCount; // @synthesize playCount=_playCount;
//    @property(copy, nonatomic) NSString *screenName; // @synthesize screenName=_screenName;
//    @property(nonatomic) int shareCount; // @synthesize shareCount=_shareCount;
//    @property(copy, nonatomic) NSString *shareURL; // @synthesize shareURL=_shareURL;
//    @property(nonatomic) BOOL subscribed; // @synthesize subscribed=_subscribed;
//    @property(retain, nonatomic) TTVUserAuthInfo *userAuthInfo; // @synthesize userAuthInfo=_userAuthInfo;
//    @property(copy, nonatomic) NSString *userDesc; // @synthesize userDesc=_userDesc;
//    @property(copy, nonatomic) NSString *userID; // @synthesize userID=_userID;
//    @property(copy, nonatomic) NSString *verifiedContent; // @synthesize verifiedContent=_verifiedContent;
//    @property(nonatomic) int videoCount; // @synthesize videoCount=_videoCount;
//
//    @end



@class NSString, TTVUserAccount;

@protocol TTVMessageNewVideoServiceDelegate <NSObject>
- (void)messageNewVideoDidReceived:(NSString *)arg1 userModel:(TTVUserAccount *)arg2;
    @end



@interface TTVMessageNewVideoService : NSObject
    {
        id <TTVMessageNewVideoServiceDelegate> _delegate;
    }
    
- (void)dealloc;
    @property(nonatomic) __weak id <TTVMessageNewVideoServiceDelegate> delegate; // @synthesize delegate=_delegate;
- (id)init;
- (void)receivedNewVideoMessage:(id)arg1;
    
    @end


@interface CategorySelectorView: UIView
    
@end

@interface TTCollectionPageViewController : UIViewController

@end

@interface TTVideoTabViewController: UIViewController
    
@property(retain, nonatomic) UIView *barView; // @synthesize barView=_barView;
@property(nonatomic) float bottomInset; // @synthesize bottomInset=_bottomInset;
@property(retain, nonatomic) NSArray *categories; // @synthesize categories=_categories;
@property(retain, nonatomic) CategorySelectorView *categorySelectorView; // @synthesize 
- (void)categorySelectorView:(id)arg1 didClickSearchButton:(id)arg2;
- (void)categorySelectorView:(id)arg1 selectCategory:(id)arg2;
- (void)connectionChanged:(id)arg1;
- (void)dealloc;
- (void)feedRefreshButtonPressed:(id)arg1;
- (void)fetchCategoryData;
- (void)finishLoading;
//    @property(retain, nonatomic) TTVFollowVideoMessageFloatingView *floatingView; // @synthesize floatingView=_floatingView;
- (void)handleRefreshButtonSettingEnabledNotification:(id)arg1;
- (id)headerViewForCell:(id)arg1;
- (void)hiddenFeedRefreshViewIfNeeded;
- (void)initNavigationBar;
- (id)initWithCoder:(id)arg1;
    @property(nonatomic) int lastSelectedPageIndex; // @synthesize lastSelectedPageIndex=_lastSelectedPageIndex;
- (void)listViewOfTTCollectionPageCellEndLoading:(id)arg1 isFinish:(BOOL)arg2 isUserPull:(BOOL)arg3;
- (void)listViewOfTTCollectionPageCellStartLoading:(id)arg1;
- (void)messageBubbleDidReceived:(id)arg1;
    @property(copy, nonatomic) NSString *messageContent; // @synthesize messageContent=_messageContent;
- (void)messageNewVideoDidReceived:(id)arg1 userModel:(id)arg2;
    @property(retain, nonatomic) TTVMessageNewVideoService *messageNewVideoService; // @synthesize messageNewVideoService=_messageNewVideoService;
- (void)numbersOfUnreadNewVideoMessageChanged:(int)arg1;
    @property(retain, nonatomic) TTCollectionPageViewController *pageViewController; // @synthesize pageViewController=_pageViewController;
- (void)pageViewController:(id)arg1 didPagingToIndex:(int)arg2;
- (void)pageViewController:(id)arg1 didSkipToIndex:(int)arg2;
- (void)pageViewController:(id)arg1 pagingFromIndex:(int)arg2 toIndex:(int)arg3 completePercent:(float)arg4;
- (void)pageViewController:(id)arg1 willPagingToIndex:(int)arg2;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (void)receiveVideoTabbarClickedNotification:(id)arg1;
- (void)searchButtonTouched;
- (float)selectorViewHeight;
- (void)setInset;
    @property(nonatomic) float topInset; // @synthesize topInset=_topInset;
    @property(retain, nonatomic) TTVUserAccount *userModel; // @synthesize userModel=_userModel;
    @property(nonatomic) BOOL videoTabbarClickedRefresh; // @synthesize videoTabbarClickedRefresh=_videoTabbarClickedRefresh;
- (void)setupConstraints;
- (void)setupFeedRefreshView;
- (BOOL)shouldAnimateRefreshViewWithPageCell:(id)arg1;
- (BOOL)shouldAutorotate;
- (void)showFollowMessageFloatView;
- (void)startLoading;
- (float)statusBarHeight;
- (unsigned int)supportedInterfaceOrientations;
- (void)trackEndedByAppWillEnterBackground;
- (void)trackStartedByAppWillEnterForground;
- (void)tryShowFollowMessageFloatView;
- (struct CGRect)ttBubbleViewFrame;
- (void)viewDidAppear:(BOOL)arg1;
- (void)viewDidDisappear:(BOOL)arg1;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)arg1;
- (void)viewWillDisappear:(BOOL)arg1;
- (void)viewWillLayoutSubviews;

@end

@interface TTFBaseViewController : UIViewController <UIGestureRecognizerDelegate>
    {
        BOOL _ttf_hideStatusBar;
        BOOL _ttf_enableInteractivePopGestureRecognizer;
        BOOL _ttf_customStautsBarEnable;
        int _ttf_statusBarStyle;
    }
    
- (BOOL)gestureRecognizerShouldBegin:(id)arg1;
- (id)initWithCoder:(id)arg1;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;
- (int)preferredStatusBarStyle;
- (BOOL)prefersStatusBarHidden;
    @property(nonatomic) BOOL ttf_customStautsBarEnable; // @synthesize ttf_customStautsBarEnable=_ttf_customStautsBarEnable;
    @property(nonatomic) BOOL ttf_enableInteractivePopGestureRecognizer; // @synthesize ttf_enableInteractivePopGestureRecognizer=_ttf_enableInteractivePopGestureRecognizer;
    @property(nonatomic) BOOL ttf_hideStatusBar; // @synthesize ttf_hideStatusBar=_ttf_hideStatusBar;
    @property(nonatomic) int ttf_statusBarStyle; // @synthesize ttf_statusBarStyle=_ttf_statusBarStyle;
- (BOOL)shouldAutorotate;
- (unsigned int)supportedInterfaceOrientations;
- (void)ttf_dismissSelf;
- (void)viewDidAppear:(BOOL)arg1;
    
@end

@class TTFQuizShowLiveRoomViewController;

@protocol TTFQuizShowLiveRoomViewControllerProtocol <NSObject>
- (void)quizShowLiveRoomClose:(TTFQuizShowLiveRoomViewController *)arg1;
@end


@class TTFQuestionAnswerUnit;

@protocol TTFQuizShowLiveRoomQuestionAnswerDelegate <NSObject>
- (void)didFailedWithQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
- (void)networkFailedWithQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
- (void)showAnswerWithQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
- (void)showQuestionWithQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
@end

@interface TTFQuizShowLiveRoomViewController : TTFBaseViewController
//@interface TTFQuizShowLiveRoomViewController : TTFBaseViewController <TTFQuizShowLiveRoomQuestionAnswerDelegate, TTFQuizShowLiveRoomDelegate, TTFQAViewDelegate, TTFPlayerDelegate, TTFClearanceUsersViewDelegate, TTFResurrectionDelegate, TTFEliminateDefeatViewDelegate, TTFEliminateViewDelegate, TTFLateViewDelegate>
//    {
//        BOOL _isFetchStreamInfoSuccess;
//        BOOL _immediatelyEnterAfterIndex;
//        BOOL _enterAgain;
//        TTFPlayer *_player;
//        UIActivityIndicatorView *_playerIndicatorView;
//        TTVideoEngine *_videoEngine;
//        LOTAnimationView *_logoLoopAnimationView;
//        UIView *_containerView;
//        UIButton *_shareButton;
//        TTFResurrectionTipView *_resurrectionView;
//        UIView *_redDotView;
//        UILabel *_usersCountLabel;
//        UIButton *_closeButton;
//        TTFQuestionAnswerView *_questionAnswerView;
//        TTFCountdownView *_countdownView;
//        UIButton *_loginButton;
//        TTFTalkBoardViewController *_talkboardViewController;
//        UITapGestureRecognizer *_hideKeyboardGesture;
//        LOTAnimationView *_fireworkAnimationView;
//        TTFClearanceUsersView *_clearanceUsersView;
//        TTFInputInvitationCodeView *_inputInvitationCodeView;
//        NSMutableSet *_curQuestionAnswerUserCountSet;
//        NSTimer *_logoLoopTimer;
//        id <TTFQuizShowLiveRoomViewControllerProtocol> _delegate;
//        TTFQuizShowLiveRoomViewModel *_viewModel;
//    }

+ (void)prepareForQuizShowLiveRoom;
    @property(retain, nonatomic) NSDate *beginLiveTimeDate;
    @property(retain, nonatomic) NSDate *beginWatchTimeDate;
    @property(retain, nonatomic) id clearanceUsersView; // @synthesize clearanceUsersView=_clearanceUsersView;
- (void)clearanceUsersViewDidHide:(id)arg1;
- (void)clearanceUsersViewEnterTopWinnerListViewController:(id)arg1;
- (void)clearanceUsersViewTriggerShareAction:(id)arg1;
- (void)clearanceUsersViewTriggerSignUpNextActivityAction:(id)arg1 signUpTriggerBlock:(id)arg2;
    @property(retain, nonatomic) UIButton *closeButton; // @synthesize closeButton=_closeButton;
- (void)closeLiveRoom;
    @property(retain, nonatomic) UIView *containerView; // @synthesize containerView=_containerView;
- (void)countdownShare:(id)arg1;
    @property(retain, nonatomic) id countdownView; // @synthesize countdownView=_countdownView;
    @property(retain, nonatomic) NSMutableSet *curQuestionAnswerUserCountSet; // @synthesize curQuestionAnswerUserCountSet=_curQuestionAnswerUserCountSet;
- (void)dealloc;
    @property(nonatomic) __weak id <TTFQuizShowLiveRoomViewControllerProtocol> delegate; // @synthesize delegate=_delegate;
- (void)didFailedFetchingLiveStreamInfo;
- (void)didFailedWithQuestionAnswerUnit:(id)arg1;
- (void)endTrackStayPage:(BOOL)arg1;
    @property(nonatomic) BOOL enterAgain; // @synthesize enterAgain=_enterAgain;
- (id)extraDict;
- (void)fetchedLivingStreamInfo:(id)arg1;
    @property(retain, nonatomic) id fireworkAnimationView; // @synthesize fireworkAnimationView=_fireworkAnimationView;
- (double)getLiveTimeTimeInterval;
- (double)getWatchTimeTimeInterval;
- (long long)getWrongItemNum;
- (void)help:(id)arg1;
    @property(retain, nonatomic) UITapGestureRecognizer *hideKeyboardGesture; // @synthesize hideKeyboardGesture=_hideKeyboardGesture;
    @property(nonatomic) BOOL immediatelyEnterAfterIndex; // @synthesize immediatelyEnterAfterIndex=_immediatelyEnterAfterIndex;
- (id)initWithCoder:(id)arg1;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;
- (id)initWithViewModel:(id)arg1 immediatelyEnterAfterIndex:(BOOL)arg2 enterAgain:(BOOL)arg3 delegate:(id)arg4;
- (void)inputInvitationCodeButtonDidClicked:(id)arg1;
    @property(retain, nonatomic) id inputInvitationCodeView; // @synthesize inputInvitationCodeView=_inputInvitationCodeView;
- (void)inviteFriendsOfLateView:(id)arg1;
    @property(nonatomic) BOOL isFetchStreamInfoSuccess; // @synthesize isFetchStreamInfoSuccess=_isFetchStreamInfoSuccess;
    @property(nonatomic) long long itemNum;
- (void)keyboardAnimationWithNotification:(id)arg1 isShow:(BOOL)arg2;
- (void)keyboardWillHide:(id)arg1;
- (void)keyboardWillShow:(id)arg1;
    @property(retain, nonatomic) UIButton *loginButton; // @synthesize loginButton=_loginButton;
    @property(retain, nonatomic) id logoLoopAnimationView; // @synthesize logoLoopAnimationView=_logoLoopAnimationView;
    @property(retain, nonatomic) NSTimer *logoLoopTimer; // @synthesize logoLoopTimer=_logoLoopTimer;
- (BOOL)needHideVideoEnginePlayerView;
- (void)networkFailedWithQuestionAnswerUnit:(id)arg1;
- (void)onReachabilityChangedNotification:(id)arg1;
    @property(retain, nonatomic) id player; // @synthesize player=_player;
    @property(retain, nonatomic) UIActivityIndicatorView *playerIndicatorView; // @synthesize playerIndicatorView=_playerIndicatorView;
- (void)playerRenderStart:(id)arg1;
- (BOOL)prefersHomeIndicatorAutoHidden;
    @property(retain, nonatomic) id questionAnswerView; // @synthesize questionAnswerView=_questionAnswerView;
- (void)questionAnswerViewDidHidden:(id)arg1;
- (void)quizShowActivityChangeToStatus:(int)arg1;
- (void)quizShowFinishedWithViewModel:(id)arg1;
- (void)quizShowLiveRoomInitCompletedWithSuccess:(BOOL)arg1;
- (void)quizShowLiveRoomUsersCountChange;
- (void)quizShowSuccess;
- (void)quizShowUsedLife;
    @property(retain, nonatomic) UIView *redDotView; // @synthesize redDotView=_redDotView;
- (void)registerNotification;
- (void)removeNotification;
- (void)resurrectShare;
    @property(retain, nonatomic) id resurrectionView; // @synthesize resurrectionView=_resurrectionView;
- (void)setCurUserCountAttributedString;
    @property(retain, nonatomic) UIButton *shareButton; // @synthesize shareButton=_shareButton;
    @property(retain, nonatomic) NSDate *stayBeginTime;
    @property(retain, nonatomic) id talkboardViewController; // @synthesize talkboardViewController=_talkboardViewController;
    @property(retain, nonatomic) UILabel *usersCountLabel; // @synthesize usersCountLabel=_usersCountLabel;
    @property(retain, nonatomic) id videoEngine; // @synthesize videoEngine=_videoEngine;
    @property(retain, nonatomic) id viewModel; // @synthesize viewModel=_viewModel;
- (void)shareQuestionOfEliminateView:(id)arg1 withQuestionAnswerUnit:(id)arg2;
- (void)shareRecordOfEliminateDefeatView:(id)arg1 defeatCount:(long long)arg2 questionAnswerUnit:(id)arg3;
- (void)shareToFriends:(id)arg1;
- (void)showAnswerWithQuestionAnswerUnit:(id)arg1;
- (void)showQuestionWithQuestionAnswerUnit:(id)arg1;
- (void)signUp:(id)arg1;
- (void)startTrackStayPage;
- (void)trackerEnterLiveRoom;
- (void)ttf_accountStatusChangeNotification:(id)arg1;
- (void)ttf_applicationDidEnterBackground:(id)arg1;
- (void)ttf_applicationWillEnterForeground:(id)arg1;
- (void)uiComponentsInit;
- (void)viewDidAppear:(BOOL)arg1;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)arg1;
    
    
@end

@class SSSplashView;

@protocol SSSplashViewDelegate <NSObject>
- (void)splashViewAnimationFinished:(SSSplashView *)arg1;
@end


@class NSDictionary, NSMutableDictionary, NSString, SSSplashView, TTNavigationController, UIWindow;

@interface NewsBaseDelegate : UIResponder <SSSplashViewDelegate, CAAnimationDelegate, UIApplicationDelegate, ArticleAPNsManagerDelegate, TTGetTopNaviControllerProtocol>
    {
        BOOL _initialized;
        BOOL _animationFinished;
        float _previousWindowLevel;
        int _splashADShowType;
        BOOL _hasTriedUploadLocation;
        NSMutableDictionary *_remotoNotificationDict;
        BOOL _adShow;
        UIWindow *_window;
        NSString *deviceTokenString;
        NSString *_detailCommentLabelTextWhenCrash;
        TTNavigationController *_navigationController;
        UIWindow *_nightModelWindow;
        SSSplashView *_splashView;
        NSDictionary *_launchOptions;
        UIWindow *_architectureWindow;
    }
    
+ (void)startRegisterRemoteNotification;
+ (void)startRegisterRemoteNotificationAfterAuthorizeWithDelay:(int)arg1;
+ (void)startRegisterRemoteNotificationAfterDelay:(int)arg1;
+ (void)startRegisterRemoteNotificationWithGuideConfigInfoAfterDelay:(int)arg1;
+ (void)startReportLocationWithGuideConfigInfo;
- (void)UIInitialized:(id)arg1;
- (void)accountStateDidChanged:(id)arg1;
    @property(nonatomic) BOOL adShow; // @synthesize adShow=_adShow;
- (void)addFeedbackLaunchCheck;
- (void)addSplashView;
- (id)allSupportedURLSchemes;
- (BOOL)apnsManager:(id)arg1 canPresentViewControllerToUserID:(id)arg2;
- (void)apnsManager:(id)arg1 handleUserInfoContainsID:(id)arg2;
- (id)appKey;
//- (BOOL)application:(id)arg1 continueUserActivity:(id)arg2 restorationHandler:(CDUnknownBlockType)arg3;
- (void)application:(id)arg1 didFailToRegisterForRemoteNotificationsWithError:(id)arg2;
- (BOOL)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2;
- (void)application:(id)arg1 didReceiveLocalNotification:(id)arg2;
- (void)application:(id)arg1 didReceiveRemoteNotification:(id)arg2;
- (void)application:(id)arg1 didRegisterForRemoteNotificationsWithDeviceToken:(id)arg2;
- (void)application:(id)arg1 didRegisterUserNotificationSettings:(id)arg2;
//- (void)application:(id)arg1 handleWatchKitExtensionRequest:(id)arg2 reply:(CDUnknownBlockType)arg3;
- (BOOL)application:(id)arg1 normalLauchProcessWithOptions:(id)arg2;
- (BOOL)application:(id)arg1 openURL:(id)arg2 sourceApplication:(id)arg3 annotation:(id)arg4;
//- (void)application:(id)arg1 performActionForShortcutItem:(id)arg2 completionHandler:(CDUnknownBlockType)arg3;
- (unsigned int)application:(id)arg1 supportedInterfaceOrientationsForWindow:(id)arg2;
- (void)application:(id)arg1 willChangeStatusBarFrame:(struct CGRect)arg2;
- (void)applicationDidBecomeActive:(id)arg1;
- (void)applicationDidEnterBackground:(id)arg1;
- (void)applicationWillEnterForeground:(id)arg1;
- (void)applicationWillResignActive:(id)arg1;
- (void)applicationWillTerminate:(id)arg1;
    @property(retain, nonatomic) UIWindow *architectureWindow; // @synthesize architectureWindow=_architectureWindow;
- (void)autoLoginFinished:(id)arg1;
- (void)beginRegisterSystemAuthorization;
- (BOOL)canHandleOpenURL:(id)arg1 sourceApplication:(id)arg2 annotation:(id)arg3;
- (id)channelId;
- (void)checkWeiboExpiration;
- (void)cleanCoreDataIfNeeded;
- (void)clearAppBadgeButNotificationCenter;
//- (void)crashlyticsDidDetectReportForLastExecution:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (void)dealloc;
    @property(retain, nonatomic) NSString *detailCommentLabelTextWhenCrash; // @synthesize detailCommentLabelTextWhenCrash=_detailCommentLabelTextWhenCrash;
    @property(copy, nonatomic) NSString *deviceTokenString; // @synthesize deviceTokenString;
- (id)exploreMainViewController;
- (id)getAppTopNavigationController;
- (void)handleFirstLaunchForCurrentVersion;
- (void)handleLaunchURLForTTTracker:(id)arg1;
- (void)handleShortcutItem:(id)arg1;
- (void)initialize:(id)arg1;
- (void)initializeSDKS;
- (void)introductionViewControllerDismissed:(id)arg1;
- (BOOL)isFromAPNS;
- (BOOL)isFromAppLink;
    @property(retain, nonatomic) NSDictionary *launchOptions; // @synthesize launchOptions=_launchOptions;
    @property(retain, nonatomic) TTNavigationController *navigationController; // @synthesize navigationController=_navigationController;
    @property(retain, nonatomic) UIWindow *nightModelWindow; // @synthesize nightModelWindow=_nightModelWindow;
- (void)openTTNetworkHttpsTransformation;
- (void)p_sendShowWidgetTrackIfNeed;
- (void)registerDefaultsFromSettingsBundle;
- (void)removeSplash;
- (void)reportAppEnterBackground;
- (void)sendLaunchTrackIfNeededWithUrl:(id)arg1;
- (void)setLaunchController;
- (void)setPadLaunchViewControler;
- (void)setPhoneLaunchViewController;
- (void)setRootTabPadArchitecture;
- (void)setRootViewControllerWithStoryboardName:(id)arg1;
    @property(retain, nonatomic) SSSplashView *splashView; // @synthesize splashView=_splashView;
    @property(retain, nonatomic) UIWindow *window; // @synthesize window=_window;
- (void)settingMonitor;
- (void)settingNetworkSerializerClass;
- (void)settingSplashADShowType:(BOOL)arg1;
- (void)shareToPlatformNeedEnterBackground:(id)arg1;
- (void)showADSplash;
- (void)showIntroductionView;
- (void)showRemoteNotificationAlertIfNeeded;
- (void)splashViewAnimationFinished:(id)arg1;
- (void)splashViewDisappearAnimationDidFinished:(unsigned int)arg1;
- (void)startUpdateLocationAfterDelay:(int)arg1;
- (id)umengTrackAppkey;
- (void)userInfoReceived:(id)arg1;
- (id)weixinAppID;

    
@end

@interface AppDelegate : NewsBaseDelegate
    {
    }
    
- (BOOL)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2;
- (void)applicationWillEnterForeground:(id)arg1;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4;
- (id)umengTrackAppkey;
- (id)weixinAppID;
    
@end


@interface APNsManager : NSObject
    {
        SSHttpOperation *_appNoticeOperation;
    }
    
+ (id)sharedManager;
    @property(retain, nonatomic) SSHttpOperation *appNoticeOperation; // @synthesize appNoticeOperation=_appNoticeOperation;
- (void)dealWithOpenURL:(id *)arg1;
- (void)dealloc;
- (void)handleRemoteNotification:(id)arg1;
- (void)sendAppNoticeStatus;
- (void)sendTrackEvent:(id)arg1 lable:(id)arg2 value:(id)arg3;
- (void)trackWithPageName:(id)arg1 params:(id)arg2;
- (BOOL)tryForOldAPNsLogical:(id)arg1;
- (BOOL)ttv_successDownloadPic:(id)arg1;
    
@end


@interface ArticleAPNsManager : APNsManager
    {
        id <ArticleAPNsManagerDelegate> _delegate;
    }
    
+ (id)sharedManager;
- (void)dealWithOpenURL:(id *)arg1;
    @property(nonatomic) __weak id <ArticleAPNsManagerDelegate> delegate; // @synthesize delegate=_delegate;
- (void)trackWithPageName:(id)arg1 params:(id)arg2;
- (BOOL)tryForOldAPNsLogical:(id)arg1;
    
    @end


@interface TTNavigationController : UINavigationController <UIGestureRecognizerDelegate>
    {
        BOOL _shouldIgnorePushingViewControllers;
        BOOL _canDragBack;
        BOOL _fullScreenVideoIsPlaying;
        BOOL _animationLock;
        BOOL _useTimingFunction;
        BOOL _viewDidLoadDone;
        UIPanGestureRecognizer *_panRecognizer;
        UISwipeGestureRecognizer *_swipeRecognizer;
        UIView *_insertView;
        UIImageView *_shadowImage;
        UIView *_maskView;
        UIColor *_originalColor;
    }
    
+ (BOOL)refactorNaviEnabled;
+ (BOOL)refactorTransitionAnimationEnabled;
- (void)addCustomNavigationBarForViewController:(id)arg1;
- (void)addCustomNavigationBarIfNeeded;
- (void)addKVO;
- (void)addTabBarSnapshotForSuperView:(id)arg1;
- (struct UIEdgeInsets)additionalSafeAreaInsets;
    @property(nonatomic) BOOL animationLock; // @synthesize animationLock=_animationLock;
    @property(nonatomic) BOOL canDragBack; // @synthesize canDragBack=_canDragBack;
- (void)customPopToViewController:(id)arg1 fromViewController:(id)arg2 animated:(BOOL)arg3;
- (void)dealloc;
- (void)didShowViewController:(id)arg1 animated:(BOOL)arg2;
    @property(nonatomic) BOOL fullScreenVideoIsPlaying; // @synthesize fullScreenVideoIsPlaying=_fullScreenVideoIsPlaying;
- (BOOL)gestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2;
- (BOOL)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2;
- (BOOL)gestureRecognizerShouldBegin:(id)arg1;
- (BOOL)gestureView:(id)arg1 isClass:(Class)arg2;
- (void)ignorePushViewControllersIfNeeded:(BOOL)arg1;
- (id)initWithRootViewController:(id)arg1;
- (id)innerBarBackgroundView;
- (id)innerBarItemViews;
- (id)innerTransitionView;
    @property(retain, nonatomic) UIView *insertView; // @synthesize insertView=_insertView;
    @property(retain, nonatomic) UIView *maskView; // @synthesize maskView=_maskView;
- (BOOL)orientationMaskSupportsOrientationMask:(unsigned int)arg1 orientation:(int)arg2;
    @property(retain, nonatomic) UIColor *originalColor; // @synthesize originalColor=_originalColor;
- (void)pan:(id)arg1;
    @property(retain, nonatomic) UIPanGestureRecognizer *panRecognizer; // @synthesize panRecognizer=_panRecognizer;
//- (void)performAnimation:(CDUnknownBlockType)arg1 completion:(CDUnknownBlockType)arg2;
- (id)popToRootViewControllerAnimated:(BOOL)arg1;
- (id)popToViewController:(id)arg1 animated:(BOOL)arg2;
- (id)popViewControllerAnimated:(BOOL)arg1;
- (id)popViewControllerByInterfaceAnimationAnimated:(BOOL)arg1;
- (void)pushViewController:(id)arg1 animated:(BOOL)arg2;
- (void)pushViewController:(id)arg1 animationTag:(int)arg2 direction:(int)arg3 animated:(BOOL)arg4;
- (void)pushViewControllerByInterfaceAnimation:(id)arg1 animated:(BOOL)arg2;
- (void)reloadTheme;
- (void)removeKVO;
- (void)removeTabBarSnapshotForSuperView:(id)arg1;
- (void)removeViewControllerAtIndex:(unsigned int)arg1;
- (void)setCustomNavigationBarForViewControllers:(id)arg1;
- (void)setNavigationBarHidden:(BOOL)arg1 animated:(BOOL)arg2;
- (void)setScrollViewContentInset:(id)arg1 viewController:(id)arg2;
    @property(retain, nonatomic) UIImageView *shadowImage; // @synthesize shadowImage=_shadowImage;
    @property(nonatomic) BOOL shouldIgnorePushingViewControllers; // @synthesize shouldIgnorePushingViewControllers=_shouldIgnorePushingViewControllers;
    @property(retain, nonatomic) UISwipeGestureRecognizer *swipeRecognizer; // @synthesize swipeRecognizer=_swipeRecognizer;
    @property(nonatomic) BOOL useTimingFunction; // @synthesize useTimingFunction=_useTimingFunction;
- (void)setViewControllers:(id)arg1;
- (void)setViewControllers:(id)arg1 animated:(BOOL)arg2;
    @property(nonatomic) BOOL viewDidLoadDone; // @synthesize viewDidLoadDone=_viewDidLoadDone;
- (BOOL)shouldAutorotate;
- (id)snapShotForTabbar;
- (id)snapshotViewFromView:(id)arg1;
- (unsigned int)supportedInterfaceOrientations;
- (void)swipe:(id)arg1;
- (int)topViewControllerIndexWithNoneDragToRoot;
- (void)transitionAtPercent:(float)arg1;
- (void)viewDidAppear:(BOOL)arg1;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)arg1;
    
    @end


#endif /* VideoHeaders_h */
