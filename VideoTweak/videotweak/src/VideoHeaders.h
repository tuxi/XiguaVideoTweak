//
//  VideoHeaders.h
//  Video
//
//  Created by xiaoyuan on 2018/1/13.
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

@protocol TTFQuestionAnswerUnitDelegate <NSObject>
- (void)userAnswerErrorOfQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
- (void)userAnswerExceptionOfQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
- (void)userNetworkErrorOfQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg1;
@end

@interface TTFHeartBeatTrace : NSObject
{
    BOOL _isFromWs;
//    TTFHeartBeatStruct *_heartbeat;
    id _heartbeat;
    int _htStatus;
    long long _activityId;
    long long _localTime;
    long long _htTime;
}

@property(nonatomic) long long activityId; // @synthesize activityId=_activityId;
- (id)description;
@property(retain, nonatomic) id heartbeat; // @synthesize heartbeat=_heartbeat;
@property(nonatomic) int htStatus; // @synthesize htStatus=_htStatus;
@property(nonatomic) long long htTime; // @synthesize htTime=_htTime;
- (id)init;
- (id)initWithHeartBeat:(id)arg1;
@property(nonatomic) BOOL isFromWs; // @synthesize isFromWs=_isFromWs;
@property(nonatomic) long long localTime; // @synthesize localTime=_localTime;
- (id)traceDict;

@end


@protocol TTFHeartBeatServiceDelegate <NSObject>
- (void)didReceiveHeartbeat:(TTFHeartBeatTrace *)arg1;
@end

@interface TTFLiveStreamInfo : NSObject
{
    int _defaultRes;
    int _defaultBufferMs;
    NSDictionary *_resolutionDict;
    NSString *_app;
    NSString *_stream;
    NSDictionary *_play_list;
}

@property(copy, nonatomic) NSString *app; // @synthesize app=_app;
@property(nonatomic) int defaultBufferMs; // @synthesize defaultBufferMs=_defaultBufferMs;
@property(nonatomic) int defaultRes; // @synthesize defaultRes=_defaultRes;
- (id)getStreamsForRes:(int)arg1;
- (id)initWithDict:(id)arg1;
@property(retain, nonatomic) NSDictionary *play_list; // @synthesize play_list=_play_list;
@property(copy, nonatomic) NSDictionary *resolutionDict; // @synthesize resolutionDict=_resolutionDict;
@property(copy, nonatomic) NSString *stream; // @synthesize stream=_stream;
- (id)supportedResolutions;

@end

@class TTFLiveStreamInfo, TTFQuizShowLiveRoomViewModel;

@protocol TTFQuizShowLiveRoomDelegate <NSObject>
- (void)didFailedFetchingLiveStreamInfo;
- (void)fetchedLivingStreamInfo:(TTFLiveStreamInfo *)arg1;
- (void)quizShowActivityChangeToStatus:(int)arg1;
- (void)quizShowFinishedWithViewModel:(TTFQuizShowLiveRoomViewModel *)arg1;
- (void)quizShowLiveRoomInitCompletedWithSuccess:(BOOL)arg1;
- (void)quizShowLiveRoomUsersCountChange;
- (void)quizShowSuccess;
- (void)quizShowUsedLife;
@end



@class CADisplayLink, NSArray, NSString, TTFActivityConfigStruct, TTFAuthStruct, TTFCeremonyStruct, TTFFetchLiveInfoTrace, TTFGeneralControlStruct, TTFIndexTrace, TTFLastAnswerInfo, TTFQuestionAnswerUnit, TTFUserStruct;

@interface TTFQuizShowLiveRoomViewModel : NSObject <TTFQuestionAnswerUnitDelegate, TTFHeartBeatServiceDelegate>
{
    BOOL _isSign;
    BOOL _isLiveRoomIndexSuccess;
    BOOL _isLiveRoomInitSuccess;
    BOOL _needUpgrade;
    BOOL _isInvitation;
    BOOL _kickoutNetError;
    BOOL _isQuizshowSuccess;
    BOOL _isFetchingStreamInfo;
    id <TTFQuizShowLiveRoomDelegate> _delegate;
    id <TTFQuizShowLiveRoomQuestionAnswerDelegate> _questionAnswerDelegate;
    NSString *_enterFromStr;
    TTFUserStruct *_curUser;
    NSArray *_livingStreamUrls;
    TTFAuthStruct *_authInfo;
    TTFLastAnswerInfo *_lastAnswerInfo;
    TTFCeremonyStruct *_ceremony;
    TTFActivityConfigStruct *_currentActivity;
    TTFActivityConfigStruct *_nextActivity;
    int _activityStatus;
    NSString *_curSignCountStr;
    TTFQuestionAnswerUnit *_currentQuestionAnswerUnit;
    int _netFailedQuestionID;
    int _countDown;
    int _commentInterval;
    int _submitRetryCount;
    int _submitRetryTimeout;
    NSString *_upgradeTips;
    TTFGeneralControlStruct *_generalControl;
    CADisplayLink *_countDownDisplayLink;
    int _indexRetryIndex;
    int _getStreamRetryIndex;
    TTFIndexTrace *_indexTrace;
    TTFFetchLiveInfoTrace *_fetchLiveInfoTrace;
    long long _curSignCount;
    long long _curUsersCount;
    long long _maxParticipateCount;
    long long _startTime;
}

+ (id)formatTimestamp:(long long)arg1;
+ (id)formatToBonus:(long long)arg1;
+ (id)formattedStringWithAllBonus:(long long)arg1;
+ (id)formattedStringWithMyBonus:(long long)arg1;
- (void)_getStreamInfo;
- (void)_indexWithActivityID:(long long)arg1;
@property(nonatomic) int activityStatus; // @synthesize activityStatus=_activityStatus;
@property(retain, nonatomic) TTFAuthStruct *authInfo; // @synthesize authInfo=_authInfo;
@property(retain, nonatomic) TTFCeremonyStruct *ceremony; // @synthesize ceremony=_ceremony;
- (void)checkActivityStatus;
- (void)checkInvitationCode:(id)arg1 completionBlock:(id)arg2;
@property(nonatomic) int commentInterval; // @synthesize commentInterval=_commentInterval;
- (int)commentRefreshInterval;
@property(nonatomic) int countDown; // @synthesize countDown=_countDown;
@property(retain, nonatomic) CADisplayLink *countDownDisplayLink; // @synthesize countDownDisplayLink=_countDownDisplayLink;
@property(nonatomic) long long curSignCount; // @synthesize curSignCount=_curSignCount;
@property(copy, nonatomic) NSString *curSignCountStr; // @synthesize curSignCountStr=_curSignCountStr;
@property(retain, nonatomic) TTFUserStruct *curUser; // @synthesize curUser=_curUser;
@property(nonatomic) long long curUsersCount; // @synthesize curUsersCount=_curUsersCount;
@property(retain, nonatomic) TTFActivityConfigStruct *currentActivity; // @synthesize currentActivity=_currentActivity;
@property(retain, nonatomic) TTFQuestionAnswerUnit *currentQuestionAnswerUnit; // @synthesize currentQuestionAnswerUnit=_currentQuestionAnswerUnit;
- (void)dealloc;
@property(nonatomic) __weak id <TTFQuizShowLiveRoomDelegate> delegate; // @synthesize delegate=_delegate;
- (void)didReceiveHeartbeat:(id)arg1;
@property(retain, nonatomic) NSString *enterFromStr; // @synthesize enterFromStr=_enterFromStr;
@property(retain, nonatomic) TTFFetchLiveInfoTrace *fetchLiveInfoTrace; // @synthesize fetchLiveInfoTrace=_fetchLiveInfoTrace;
@property(retain, nonatomic) TTFGeneralControlStruct *generalControl; // @synthesize generalControl=_generalControl;
- (id)getActivityStatusStringForTracker;
- (void)getStreamInfo;
@property(nonatomic) int getStreamRetryIndex; // @synthesize getStreamRetryIndex=_getStreamRetryIndex;
@property(nonatomic) int indexRetryIndex; // @synthesize indexRetryIndex=_indexRetryIndex;
@property(retain, nonatomic) TTFIndexTrace *indexTrace; // @synthesize indexTrace=_indexTrace;
- (id)init;
- (BOOL)isActivityEnd;
- (BOOL)isActivityGetOn;
@property(nonatomic) BOOL isFetchingStreamInfo; // @synthesize isFetchingStreamInfo=_isFetchingStreamInfo;
@property(nonatomic) BOOL isInvitation; // @synthesize isInvitation=_isInvitation;
@property(nonatomic) BOOL isLiveRoomIndexSuccess; // @synthesize isLiveRoomIndexSuccess=_isLiveRoomIndexSuccess;
@property(nonatomic) BOOL isLiveRoomInitSuccess; // @synthesize isLiveRoomInitSuccess=_isLiveRoomInitSuccess;
@property(nonatomic) BOOL isQuizshowSuccess; // @synthesize isQuizshowSuccess=_isQuizshowSuccess;
@property(nonatomic) BOOL isSign; // @synthesize isSign=_isSign;
@property(nonatomic) BOOL kickoutNetError; // @synthesize kickoutNetError=_kickoutNetError;
@property(retain, nonatomic) TTFLastAnswerInfo *lastAnswerInfo; // @synthesize lastAnswerInfo=_lastAnswerInfo;
- (void)leaveDashboard;
@property(retain, nonatomic) NSArray *livingStreamUrls; // @synthesize livingStreamUrls=_livingStreamUrls;
@property(readonly, nonatomic) long long maxParticipateCount; // @synthesize maxParticipateCount=_maxParticipateCount;
@property(nonatomic) BOOL needUpgrade; // @synthesize needUpgrade=_needUpgrade;
@property(nonatomic) int netFailedQuestionID; // @synthesize netFailedQuestionID=_netFailedQuestionID;
@property(retain, nonatomic) TTFActivityConfigStruct *nextActivity; // @synthesize nextActivity=_nextActivity;
- (void)operateCeremonyWithHeartbeat:(id)arg1;
- (void)operateDistributeAndAnswerStatusWithHeartbeat:(id)arg1;
- (void)operateRevealAnswerWithHeartbeat:(id)arg1;
@property(nonatomic) __weak id <TTFQuizShowLiveRoomQuestionAnswerDelegate> questionAnswerDelegate; // @synthesize questionAnswerDelegate=_questionAnswerDelegate;
- (void)quizShowLiveRoomIndexWithActivityID:(long long)arg1;
- (void)quizShowLiveRoomInit;
- (void)recoverLifesIfNeed;
- (void)setNotNeedInit;
@property(nonatomic) long long startTime; // @synthesize startTime=_startTime;
@property(nonatomic) int submitRetryCount; // @synthesize submitRetryCount=_submitRetryCount;
@property(nonatomic) int submitRetryTimeout; // @synthesize submitRetryTimeout=_submitRetryTimeout;
@property(copy, nonatomic) NSString *upgradeTips; // @synthesize upgradeTips=_upgradeTips;
- (void)signUpWithCompletionBlock:(id)arg1;
- (void)startCountDown;
- (void)updateInviteCodeInfoWithCompletionBlock:(id)arg1;
- (void)userAnswerErrorOfQuestionAnswerUnit:(id)arg1;
- (void)userAnswerExceptionOfQuestionAnswerUnit:(id)arg1;
- (void)userNetworkErrorOfQuestionAnswerUnit:(id)arg1;


@end

@protocol TTFResurrectionDelegate <NSObject>
- (void)resurrectShare;
@end

@class TTFQuestionAnswerView;

@protocol TTFQAViewDelegate <NSObject>
- (void)questionAnswerViewDidHidden:(TTFQuestionAnswerView *)arg1;
@end


@class TTFQuestionOptionView;

@protocol TTFQuestionOptionViewDelegate <NSObject>
- (void)optionViewBeClicked:(TTFQuestionOptionView *)arg1;
@end

@class CAShapeLayer, TTFOptionStruct, UILabel;

@interface TTFQuestionOptionView : UIView
{
    BOOL _selected;
    id <TTFQuestionOptionViewDelegate> _delegate;
    UILabel *_optionTextLabel;
    TTFOptionStruct *_option;
    CAShapeLayer *_shapeLayer;
    UILabel *_choosenUserCountLabel;
}

- (void)beClicked:(id)arg1;
@property(retain, nonatomic) UILabel *choosenUserCountLabel; // @synthesize choosenUserCountLabel=_choosenUserCountLabel;
@property(nonatomic) __weak id <TTFQuestionOptionViewDelegate> delegate; // @synthesize delegate=_delegate;
- (void)initUIComponents;
- (id)initWithFrame:(struct CGRect)arg1;
@property(retain, nonatomic) TTFOptionStruct *option; // @synthesize option=_option;
@property(retain, nonatomic) UILabel *optionTextLabel; // @synthesize optionTextLabel=_optionTextLabel;
@property(nonatomic) BOOL selected; // @synthesize selected=_selected;
- (void)setOption:(id)arg1 index:(int)arg2 isReveal:(BOOL)arg3 userChoosen:(BOOL)arg4 choosenRate:(float)arg5;
@property(retain, nonatomic) CAShapeLayer *shapeLayer; // @synthesize shapeLayer=_shapeLayer;

@end

@class GPBMessage;



@class CAGradientLayer, CAShapeLayer, NSMutableArray, NSString, TTFPlayer, TTFQuestionAnswerUnit, TTFResultTipsView, TTFTimeUpView, UIImageView, UILabel;

@interface TTFQuestionAnswerView : UIView <TTFQuestionOptionViewDelegate>
{
    BOOL _isQAViewShow;
    BOOL _isPlayerContainerViewAnimationFinish;
    id <TTFQAViewDelegate> _delegate;
    TTFQuestionAnswerUnit *_questionAnswerUnit;
    TTFPlayer *_player;
    UIView *_qaContainerView;
    UIImageView *_qaContainerHeaderView;
    UIView *_qaContainerBackgroundView;
    CAShapeLayer *_countdownShapeLayer;
    UILabel *_remainingAnswerTimeFirstLabel;
    UILabel *_remainingAnswerTimeSecondLabel;
    TTFTimeUpView *_timeUpView;
    UILabel *_timeUpLabel;
    UILabel *_questionLabel;
    UIView *_questionLabelMaskView;
    CAGradientLayer *_questionLabelGradientLayer;
    NSMutableArray *_optionViews;
    TTFResultTipsView *_tipsView;
    UILabel *_watchingTipsLabel;
    UIView *_playerContainerView;
    unsigned long _curRemainingAnswerTime;
}

@property(retain, nonatomic) CAShapeLayer *countdownShapeLayer; // @synthesize countdownShapeLayer=_countdownShapeLayer;
@property(nonatomic) unsigned long curRemainingAnswerTime; // @synthesize curRemainingAnswerTime=_curRemainingAnswerTime;
- (void)dealloc;
@property(nonatomic) __weak id <TTFQAViewDelegate> delegate; // @synthesize delegate=_delegate;
- (id)getQuestionAttributedString;
- (float)heightWithQuestionAnswerUnit:(id)arg1;
- (void)hideWithAnimated:(BOOL)arg1;
- (void)initUIComponents;
- (id)initWithFrame:(struct CGRect)arg1;
@property(nonatomic) BOOL isPlayerContainerViewAnimationFinish; // @synthesize isPlayerContainerViewAnimationFinish=_isPlayerContainerViewAnimationFinish;
@property(nonatomic) BOOL isQAViewShow; // @synthesize isQAViewShow=_isQAViewShow;
// 选择答案
- (void)optionViewBeClicked:(id)arg1;
@property(retain, nonatomic) NSMutableArray *optionViews; // @synthesize optionViews=_optionViews;
@property(nonatomic) __weak TTFPlayer *player; // @synthesize player=_player;
@property(retain, nonatomic) UIView *playerContainerView; // @synthesize playerContainerView=_playerContainerView;
@property(retain, nonatomic) UIView *qaContainerBackgroundView; // @synthesize qaContainerBackgroundView=_qaContainerBackgroundView;
@property(retain, nonatomic) UIImageView *qaContainerHeaderView; // @synthesize qaContainerHeaderView=_qaContainerHeaderView;
@property(retain, nonatomic) UIView *qaContainerView; // @synthesize qaContainerView=_qaContainerView;
@property(retain, nonatomic) TTFQuestionAnswerUnit *questionAnswerUnit; // @synthesize questionAnswerUnit=_questionAnswerUnit;
@property(retain, nonatomic) UILabel *questionLabel; // @synthesize questionLabel=_questionLabel;
@property(retain, nonatomic) CAGradientLayer *questionLabelGradientLayer; // @synthesize questionLabelGradientLayer=_questionLabelGradientLayer;
@property(retain, nonatomic) UIView *questionLabelMaskView; // @synthesize questionLabelMaskView=_questionLabelMaskView;
@property(retain, nonatomic) UILabel *remainingAnswerTimeFirstLabel; // @synthesize remainingAnswerTimeFirstLabel=_remainingAnswerTimeFirstLabel;
@property(retain, nonatomic) UILabel *remainingAnswerTimeSecondLabel; // @synthesize remainingAnswerTimeSecondLabel=_remainingAnswerTimeSecondLabel;
@property(retain, nonatomic) UILabel *timeUpLabel; // @synthesize timeUpLabel=_timeUpLabel;
@property(retain, nonatomic) TTFTimeUpView *timeUpView; // @synthesize timeUpView=_timeUpView;
@property(retain, nonatomic) TTFResultTipsView *tipsView; // @synthesize tipsView=_tipsView;
@property(retain, nonatomic) UILabel *watchingTipsLabel; // @synthesize watchingTipsLabel=_watchingTipsLabel;
- (void)showAnswerWithQuestionAnswerUnit:(id)arg1;
- (void)showLineOfIndex:(unsigned int)arg1 withLineOrigins:(id)arg2 lineHeights:(id)arg3 offset:(float)arg4 lineTopGap:(float)arg5 eachLineShowDuration:(float)arg6;
- (void)showQuestionWithQuestionAnswerUnit:(id)arg1;


@end

@class UIButton, UIControl, UIImageView, UILabel;

@interface TTFResurrectionTipView : UIView
{
    id <TTFResurrectionDelegate> _delegate;
    id _shareTapped;
    UIButton *_touchControl;
    UILabel *_topTipLabel;
    UIButton *_iconButton;
    UIView *_linkedLine;
    UIControl *_bottomTipControl;
    UILabel *_bottomTipLabel;
    UIImageView *_arrowIconView;
}

@property(retain, nonatomic) UIImageView *arrowIconView; // @synthesize arrowIconView=_arrowIconView;
@property(retain, nonatomic) UIControl *bottomTipControl; // @synthesize bottomTipControl=_bottomTipControl;
@property(retain, nonatomic) UILabel *bottomTipLabel; // @synthesize bottomTipLabel=_bottomTipLabel;
- (void)buttonTouched;
@property(nonatomic) __weak id <TTFResurrectionDelegate> delegate; // @synthesize delegate=_delegate;
- (void)enableLife:(BOOL)arg1;
- (void)expendTip;
- (void)hideViews:(BOOL)arg1;
@property(retain, nonatomic) UIButton *iconButton; // @synthesize iconButton=_iconButton;
- (void)initComponents;
- (id)initWithFrame:(struct CGRect)arg1;
@property(retain, nonatomic) UIView *linkedLine; // @synthesize linkedLine=_linkedLine;
- (void)setHasLife:(BOOL)arg1;
- (void)setLifes:(int)arg1;
@property(copy, nonatomic) id shareTapped; // @synthesize shareTapped=_shareTapped;
@property(retain, nonatomic) UILabel *topTipLabel; // @synthesize topTipLabel=_topTipLabel;
@property(retain, nonatomic) UIButton *touchControl; // @synthesize touchControl=_touchControl;
- (void)shrinkTip;

@end

@class TTFPlayer;

@protocol TTFPlayerDelegate <NSObject>

@optional
- (void)player:(TTFPlayer *)arg1 loadStateChanged:(int)arg2;
- (void)playerDidFailed:(TTFPlayer *)arg1;
- (void)playerIsReady:(TTFPlayer *)arg1;
- (void)playerRenderStart:(TTFPlayer *)arg1;
@end

@class TTFClearanceUsersView;

@protocol TTFClearanceUsersViewDelegate <NSObject>
- (void)clearanceUsersViewDidHide:(TTFClearanceUsersView *)arg1;
- (void)clearanceUsersViewEnterTopWinnerListViewController:(TTFClearanceUsersView *)arg1;
- (void)clearanceUsersViewTriggerShareAction:(TTFClearanceUsersView *)arg1;
- (void)clearanceUsersViewTriggerSignUpNextActivityAction:(TTFClearanceUsersView *)arg1 signUpTriggerBlock:(void (^)(void))arg2;
@end

@class TTFEliminateDefeatView, TTFQuestionAnswerUnit;

@protocol TTFEliminateDefeatViewDelegate <NSObject>
- (void)shareRecordOfEliminateDefeatView:(TTFEliminateDefeatView *)arg1 defeatCount:(long long)arg2 questionAnswerUnit:(TTFQuestionAnswerUnit *)arg3;
@end

@class TTFEliminateView, TTFQuestionAnswerUnit;

@protocol TTFEliminateViewDelegate <NSObject>
- (void)shareQuestionOfEliminateView:(TTFEliminateView *)arg1 withQuestionAnswerUnit:(TTFQuestionAnswerUnit *)arg2;
@end

@class TTFLateView;

@protocol TTFLateViewDelegate <NSObject>
- (void)inviteFriendsOfLateView:(TTFLateView *)arg1;
@end



@class LOTAnimationView, NSDate, NSMutableSet, NSString, NSTimer, TTFClearanceUsersView, TTFCountdownView, TTFInputInvitationCodeView, TTFPlayer, TTFQuestionAnswerView, TTFQuizShowLiveRoomViewModel, TTFResurrectionTipView, TTFTalkBoardViewController, TTVideoEngine, UIActivityIndicatorView, UIButton, UILabel, UITapGestureRecognizer, UIView;

@protocol TTFPlayerDelegate, TTFClearanceUsersViewDelegate, TTFQAViewDelegate, TTFQuizShowLiveRoomDelegate, TTFEliminateDefeatViewDelegate, TTFEliminateDefeatViewDelegate, TTFEliminateViewDelegate, TTFLateViewDelegate;

@interface TTFQuizShowLiveRoomViewController : TTFBaseViewController <TTFQuizShowLiveRoomQuestionAnswerDelegate, TTFQuizShowLiveRoomDelegate, TTFQAViewDelegate, TTFPlayerDelegate, TTFClearanceUsersViewDelegate, TTFResurrectionDelegate, TTFEliminateDefeatViewDelegate, TTFEliminateViewDelegate, TTFLateViewDelegate>
{
    BOOL _isFetchStreamInfoSuccess;
    BOOL _immediatelyEnterAfterIndex;
    BOOL _enterAgain;
    TTFPlayer *_player;
    UIActivityIndicatorView *_playerIndicatorView;
    TTVideoEngine *_videoEngine;
    LOTAnimationView *_logoLoopAnimationView;
    UIView *_containerView;
    UIButton *_shareButton;
    TTFResurrectionTipView *_resurrectionView;
    UIView *_redDotView;
    UILabel *_usersCountLabel;
    UIButton *_closeButton;
    TTFQuestionAnswerView *_questionAnswerView;
    TTFCountdownView *_countdownView;
    UIButton *_loginButton;
    TTFTalkBoardViewController *_talkboardViewController;
    UITapGestureRecognizer *_hideKeyboardGesture;
    LOTAnimationView *_fireworkAnimationView;
    TTFClearanceUsersView *_clearanceUsersView;
    TTFInputInvitationCodeView *_inputInvitationCodeView;
    NSMutableSet *_curQuestionAnswerUserCountSet;
    NSTimer *_logoLoopTimer;
    id <TTFQuizShowLiveRoomViewControllerProtocol> _delegate;
    TTFQuizShowLiveRoomViewModel *_viewModel;
}

+ (void)prepareForQuizShowLiveRoom;
@property(retain, nonatomic) NSDate *beginLiveTimeDate;
@property(retain, nonatomic) NSDate *beginWatchTimeDate;
@property(retain, nonatomic) TTFClearanceUsersView *clearanceUsersView; // @synthesize clearanceUsersView=_clearanceUsersView;
- (void)clearanceUsersViewDidHide:(id)arg1;
- (void)clearanceUsersViewEnterTopWinnerListViewController:(id)arg1;
- (void)clearanceUsersViewTriggerShareAction:(id)arg1;
- (void)clearanceUsersViewTriggerSignUpNextActivityAction:(id)arg1 signUpTriggerBlock:(id)arg2;
@property(retain, nonatomic) UIButton *closeButton; // @synthesize closeButton=_closeButton;
- (void)closeLiveRoom;
@property(retain, nonatomic) UIView *containerView; // @synthesize containerView=_containerView;
- (void)countdownShare:(id)arg1;
@property(retain, nonatomic) TTFCountdownView *countdownView; // @synthesize countdownView=_countdownView;
@property(retain, nonatomic) NSMutableSet *curQuestionAnswerUserCountSet; // @synthesize curQuestionAnswerUserCountSet=_curQuestionAnswerUserCountSet;
- (void)dealloc;
@property(nonatomic) __weak id <TTFQuizShowLiveRoomViewControllerProtocol> delegate; // @synthesize delegate=_delegate;
- (void)didFailedFetchingLiveStreamInfo;
- (void)didFailedWithQuestionAnswerUnit:(id)arg1;
- (void)endTrackStayPage:(BOOL)arg1;
@property(nonatomic) BOOL enterAgain; // @synthesize enterAgain=_enterAgain;
- (id)extraDict;
- (void)fetchedLivingStreamInfo:(id)arg1;
@property(retain, nonatomic) LOTAnimationView *fireworkAnimationView; // @synthesize fireworkAnimationView=_fireworkAnimationView;
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
@property(retain, nonatomic) TTFInputInvitationCodeView *inputInvitationCodeView; // @synthesize inputInvitationCodeView=_inputInvitationCodeView;
- (void)inviteFriendsOfLateView:(id)arg1;
@property(nonatomic) BOOL isFetchStreamInfoSuccess; // @synthesize isFetchStreamInfoSuccess=_isFetchStreamInfoSuccess;
@property(nonatomic) long long itemNum;
- (void)keyboardAnimationWithNotification:(id)arg1 isShow:(BOOL)arg2;
- (void)keyboardWillHide:(id)arg1;
- (void)keyboardWillShow:(id)arg1;
@property(retain, nonatomic) UIButton *loginButton; // @synthesize loginButton=_loginButton;
@property(retain, nonatomic) LOTAnimationView *logoLoopAnimationView; // @synthesize logoLoopAnimationView=_logoLoopAnimationView;
@property(retain, nonatomic) NSTimer *logoLoopTimer; // @synthesize logoLoopTimer=_logoLoopTimer;
- (BOOL)needHideVideoEnginePlayerView;
- (void)networkFailedWithQuestionAnswerUnit:(id)arg1;
- (void)onReachabilityChangedNotification:(id)arg1;
@property(retain, nonatomic) TTFPlayer *player; // @synthesize player=_player;
@property(retain, nonatomic) UIActivityIndicatorView *playerIndicatorView; // @synthesize playerIndicatorView=_playerIndicatorView;
- (void)playerRenderStart:(id)arg1;
- (BOOL)prefersHomeIndicatorAutoHidden;
@property(retain, nonatomic) TTFQuestionAnswerView *questionAnswerView; // @synthesize questionAnswerView=_questionAnswerView;
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
@property(retain, nonatomic) TTFResurrectionTipView *resurrectionView; // @synthesize resurrectionView=_resurrectionView;
- (void)setCurUserCountAttributedString;
@property(retain, nonatomic) UIButton *shareButton; // @synthesize shareButton=_shareButton;
@property(retain, nonatomic) NSDate *stayBeginTime;
@property(retain, nonatomic) TTFTalkBoardViewController *talkboardViewController; // @synthesize talkboardViewController=_talkboardViewController;
@property(retain, nonatomic) UILabel *usersCountLabel; // @synthesize usersCountLabel=_usersCountLabel;
@property(retain, nonatomic) TTVideoEngine *videoEngine; // @synthesize videoEngine=_videoEngine;
@property(retain, nonatomic) TTFQuizShowLiveRoomViewModel *viewModel; // @synthesize viewModel=_viewModel;
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

@interface TTFQuizShowLiveRoomNetworkManager : NSObject
{
}

+ (void)quizShowGetStreamOfGroupID:(long long)arg1 withCompletion:(id)arg2;
+ (id)quizShowLiveRoomIndexRequestOfActivityID:(long long)arg1 withCompletion:(id)arg2;
+ (void)quizShowLiveRoomInitRequestOfActivityID:(long long)arg1 withCompletion:(id)arg2;
+ (void)quizShowLiveRoomLeaveRequestOfActivityID:(long long)arg1 question:(id)arg2 completion:(id)arg3;
+ (void)quizShowWinRequestOfActivityID:(long long)arg1 withCompletion:(id)arg2;
+ (void)recoverLifesOfActivityID:(long long)arg1 question:(id)arg2;
+ (id)requestHeartbeatOfActivityID:(long long)arg1 completion:(id)arg2;
+ (void)signUpOfActivityID:(long long)arg1 completion:(id)arg2;
+ (void)submitAnwserOfActivityID:(long long)arg1 questionID:(long long)arg2 optionIDs:(id)arg3 completion:(id)arg4;

@end

@class LOTAnimationView, NSString, TTFDashboardView, TTFInputInvitationCodeView, TTFQuizShowLiveRoomViewController, TTFQuizShowLiveRoomViewModel, TTFResurrectionView, UIButton, UIImageView, UILabel, UIView;

@interface TTFDashboardViewController : TTFBaseViewController <TTFQuizShowLiveRoomViewControllerProtocol>
{
    BOOL _hasAutoEnterLiveRoom;
    BOOL _hasReceiveLiveRoomIndexSuccess;
    BOOL _hasTrackEnterEvent;
    BOOL _originalHideStatusBar;
    NSString *_enterFromStr;
    TTFQuizShowLiveRoomViewController *_curQuizShowLiveRoomVC;
    UIImageView *_bannerImageView;
    UIImageView *_backgroundStarImageView;
    UIImageView *_backgroundCoinsImageView;
    UIButton *_avatarButton;
    UIButton *_closeButton;
    UIView *_dashboardContainerView;
    TTFDashboardView *_dashboardView;
    TTFResurrectionView *_resurrectionView;
    TTFInputInvitationCodeView *_inputInvitationCodeView;
    UIButton *_retryButton;
    UIButton *_enterAgainButton;
    UILabel *_enterAgainTextLabel;
    LOTAnimationView *_enterAgainAnimationView;
    TTFQuizShowLiveRoomViewModel *_liveRoomViewModel;
    int _originalStatusBarStyle;
    double _liveTimeInterval;
    double _watchTimeInterval;
    long long _wrongItemNum;
    long long _activityID;
    long long _jumpMinTime;
}

@property(nonatomic) long long activityID; // @synthesize activityID=_activityID;
@property(retain, nonatomic) UIButton *avatarButton; // @synthesize avatarButton=_avatarButton;
@property(retain, nonatomic) UIImageView *backgroundCoinsImageView; // @synthesize backgroundCoinsImageView=_backgroundCoinsImageView;
@property(retain, nonatomic) UIImageView *backgroundStarImageView; // @synthesize backgroundStarImageView=_backgroundStarImageView;
@property(retain, nonatomic) UIImageView *bannerImageView; // @synthesize bannerImageView=_bannerImageView;
- (void)clickAvatarButton:(id)arg1;
- (void)clickHelp:(id)arg1;
@property(retain, nonatomic) UIButton *closeButton; // @synthesize closeButton=_closeButton;
- (void)closeDashboard:(id)arg1;
@property(nonatomic) __weak TTFQuizShowLiveRoomViewController *curQuizShowLiveRoomVC; // @synthesize curQuizShowLiveRoomVC=_curQuizShowLiveRoomVC;
@property(retain, nonatomic) UIView *dashboardContainerView; // @synthesize dashboardContainerView=_dashboardContainerView;
@property(retain, nonatomic) TTFDashboardView *dashboardView; // @synthesize dashboardView=_dashboardView;
- (void)dealloc;
- (void)endTrackStayPageWithParams:(id)arg1;
@property(retain, nonatomic) LOTAnimationView *enterAgainAnimationView; // @synthesize enterAgainAnimationView=_enterAgainAnimationView;
@property(retain, nonatomic) UIButton *enterAgainButton; // @synthesize enterAgainButton=_enterAgainButton;
- (void)enterAgainButtonDidClicked:(id)arg1;
@property(retain, nonatomic) UILabel *enterAgainTextLabel; // @synthesize enterAgainTextLabel=_enterAgainTextLabel;
@property(copy, nonatomic) NSString *enterFromStr; // @synthesize enterFromStr=_enterFromStr;
- (void)enterQuizShowLiveRoomImmediatelyEnterAfterIndex:(BOOL)arg1 enterAgain:(BOOL)arg2;
- (void)enterTopListViewController;
@property(nonatomic) BOOL hasAutoEnterLiveRoom; // @synthesize hasAutoEnterLiveRoom=_hasAutoEnterLiveRoom;
@property(nonatomic) BOOL hasReceiveLiveRoomIndexSuccess; // @synthesize hasReceiveLiveRoomIndexSuccess=_hasReceiveLiveRoomIndexSuccess;
@property(nonatomic) BOOL hasTrackEnterEvent; // @synthesize hasTrackEnterEvent=_hasTrackEnterEvent;
- (id)initWithActivityID:(long long)arg1;
- (id)initWithCoder:(id)arg1;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;
- (void)inputInvitationCode:(id)arg1;
@property(retain, nonatomic) TTFInputInvitationCodeView *inputInvitationCodeView; // @synthesize inputInvitationCodeView=_inputInvitationCodeView;
@property(nonatomic) long long jumpMinTime; // @synthesize jumpMinTime=_jumpMinTime;
@property(retain, nonatomic) TTFQuizShowLiveRoomViewModel *liveRoomViewModel; // @synthesize liveRoomViewModel=_liveRoomViewModel;
@property(nonatomic) double liveTimeInterval; // @synthesize liveTimeInterval=_liveTimeInterval;
- (id)oppoDict;
@property(nonatomic) BOOL originalHideStatusBar; // @synthesize originalHideStatusBar=_originalHideStatusBar;
@property(nonatomic) int originalStatusBarStyle; // @synthesize originalStatusBarStyle=_originalStatusBarStyle;
- (void)quizShowLiveRoomClose:(id)arg1;
- (void)resurrection:(id)arg1;
@property(retain, nonatomic) TTFResurrectionView *resurrectionView; // @synthesize resurrectionView=_resurrectionView;
@property(retain, nonatomic) UIButton *retryButton; // @synthesize retryButton=_retryButton;
- (void)retryButtonDidClicked:(id)arg1;
- (void)setStaylBeginTime:(id)arg1;
@property(nonatomic) double watchTimeInterval; // @synthesize watchTimeInterval=_watchTimeInterval;
@property(nonatomic) long long wrongItemNum; // @synthesize wrongItemNum=_wrongItemNum;
- (void)shareToFriend:(id)arg1;
- (void)signUp:(id)arg1;
- (void)startTrackStayPage;
- (id)stayBeginTime;
- (void)ttf_accountStatusChangeNotification:(id)arg1;
- (void)ttf_applicationDidEnterBackground:(id)arg1;
- (void)ttf_applicationWillEnterForeground:(id)arg1;
- (id)ttf_createInterpolatingMotionEffectWithRelativeValue:(float)arg1 type:(int)arg2;
- (void)ttf_endTrackStayPage:(BOOL)arg1;
- (void)ttf_enterLoginTipsFlow;
- (void)ttf_enterOpenNotificationTipsFlow;
- (void)ttf_judgeNeedShowEnterAgain;
- (void)ttf_openAppStore;
- (void)ttf_preloadShareImage0;
- (void)ttf_preloadShareImage1;
- (void)ttf_refreshBannerImageWithImageURLstr:(id)arg1;
- (void)ttf_registerNotification;
- (void)ttf_removeNotification;
- (void)ttf_requestIndex;
- (void)ttf_setupConstraint;
- (void)ttf_setupViews;
- (void)ttf_triggerEnterTracker:(BOOL)arg1;
- (void)ttf_triggerLivingEndFlow;
- (void)ttf_unobserveLiveRoomViewModel;
- (void)ttf_updateInviteCodeInfo;
- (void)viewDidAppear:(BOOL)arg1;
- (void)viewDidDisappear:(BOOL)arg1;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)arg1;


@end


@class CADisplayLink, NSArray, TTFAnswerStruct, TTFAnswerTrace, TTFHeartBeatTrace, TTFQuestionStruct, TTFQuestionTrace, TTFQuizShowLiveRoomViewModel;

/// 与回答问题相关的model类
@interface TTFQuestionAnswerUnit : NSObject
{
    BOOL _userNeedAnswer;
    BOOL _isUserAnswerCorrect;
    id <TTFQuestionAnswerUnitDelegate> _delegate;
    TTFQuizShowLiveRoomViewModel *_viewModel;
    unsigned int _status;
    TTFQuestionStruct *_question;
    TTFAnswerStruct *_answer;
    float _remainingAnswerTime;
    NSArray *_userChoosenOptions;
    TTFAnswerTrace *_answerTrace;
    TTFHeartBeatTrace *_heartbeatTrace;
    float _endTime;
    CADisplayLink *_countdownDisplayLink;
    int _retryCount;
    int _retryTimeout;
    int _retryIndex;
    TTFQuestionTrace *_questionTrace;
}

- (void)_submitAnswerToServerWithOptions:(id)arg1;
@property(retain, nonatomic) TTFAnswerStruct *answer; // @synthesize answer=_answer;
- (void)answerTimeUp;
@property(retain, nonatomic) TTFAnswerTrace *answerTrace; // @synthesize answerTrace=_answerTrace;
- (void)beginAnswerCountdown;
- (BOOL)canAnswer;
@property(retain, nonatomic) CADisplayLink *countdownDisplayLink; // @synthesize countdownDisplayLink=_countdownDisplayLink;
- (void)dealloc;
@property(nonatomic) __weak id <TTFQuestionAnswerUnitDelegate> delegate; // @synthesize delegate=_delegate;
@property(nonatomic) float endTime; // @synthesize endTime=_endTime;
@property(retain, nonatomic) TTFHeartBeatTrace *heartbeatTrace; // @synthesize heartbeatTrace=_heartbeatTrace;
- (id)init;
- (id)initWithHeartbeatTrace:(id)arg1 currentTime:(long long)arg2 viewModel:(id)arg3;
@property(nonatomic) BOOL isUserAnswerCorrect; // @synthesize isUserAnswerCorrect=_isUserAnswerCorrect;
- (BOOL)isUserNeedAnswer;
- (float)passTimeRate;
@property(retain, nonatomic) TTFQuestionStruct *question; // @synthesize question=_question;
@property(retain, nonatomic) TTFQuestionTrace *questionTrace; // @synthesize questionTrace=_questionTrace;
@property(nonatomic) float remainingAnswerTime; // @synthesize remainingAnswerTime=_remainingAnswerTime;
@property(nonatomic) int retryCount; // @synthesize retryCount=_retryCount;
@property(nonatomic) int retryIndex; // @synthesize retryIndex=_retryIndex;
@property(nonatomic) int retryTimeout; // @synthesize retryTimeout=_retryTimeout;
- (void)revealAnswer:(id)arg1;
@property(nonatomic) unsigned int status; // @synthesize status=_status;
- (void)setUserChoosen:(id)arg1;
@property(copy, nonatomic) NSArray *userChoosenOptions; // @synthesize userChoosenOptions=_userChoosenOptions;
@property(nonatomic) BOOL userNeedAnswer; // @synthesize userNeedAnswer=_userNeedAnswer;
@property(nonatomic) __weak TTFQuizShowLiveRoomViewModel *viewModel; // @synthesize viewModel=_viewModel;
- (void)submitAnswerWithOptions:(id)arg1;
- (unsigned int)userAnswerResult;

@end

@interface TTFAnswerTrace : NSObject
{
    BOOL _wsHt;
    BOOL _isRight;
    BOOL _useLife;
    int _status;
    int _auth;
    NSString *_extra;
    long long _aid;
    long long _qid;
    long long _optionId;
    long long _rt;
    long long _ht;
    long long _startT;
    long long _localOid;
    long long _showT;
    long long _leftT;
}

@property(nonatomic) long long aid; // @synthesize aid=_aid;
@property(nonatomic) int auth; // @synthesize auth=_auth;
@property(copy, nonatomic) NSString *extra; // @synthesize extra=_extra;
@property(nonatomic) long long ht; // @synthesize ht=_ht;
- (id)initWithHeartBeatTrace:(id)arg1;
@property(nonatomic) BOOL isRight; // @synthesize isRight=_isRight;
@property(nonatomic) long long leftT; // @synthesize leftT=_leftT;
@property(nonatomic) long long localOid; // @synthesize localOid=_localOid;
// 答案选项id
@property(nonatomic) long long optionId; // @synthesize optionId=_optionId;
@property(nonatomic) long long qid; // @synthesize qid=_qid;
@property(nonatomic) long long rt; // @synthesize rt=_rt;
@property(nonatomic) long long showT; // @synthesize showT=_showT;
@property(nonatomic) long long startT; // @synthesize startT=_startT;
@property(nonatomic) int status; // @synthesize status=_status;
@property(nonatomic) BOOL useLife; // @synthesize useLife=_useLife;
@property(nonatomic) BOOL wsHt; // @synthesize wsHt=_wsHt;
- (id)traceDict;

@end

//@interface TTFQuestionStruct : GPBMessage
//{
//}
//
//+ (id)descriptor;
//
//// Remaining properties
//@property(nonatomic) long long activityId; // @dynamic activityId;
//@property(nonatomic) long long commitDelay; // @dynamic commitDelay;
//@property(retain, nonatomic) NSMutableArray *imageURLArray; // @dynamic imageURLArray;
//@property(readonly, nonatomic) unsigned int imageURLArray_Count; // @dynamic imageURLArray_Count;
//@property(retain, nonatomic) NSMutableArray *optionsArray; // @dynamic optionsArray;
//@property(readonly, nonatomic) unsigned int optionsArray_Count; // @dynamic optionsArray_Count;
//@property(nonatomic) long long questionId; // @dynamic questionId;
//@property(nonatomic) long long questionStartTsMs; // @dynamic questionStartTsMs;
//@property(copy, nonatomic) NSString *text; // @dynamic text;
//@property(nonatomic) long long timeLimit; // @dynamic timeLimit;
//@property(nonatomic) long long uuQuestionId; // @dynamic uuQuestionId;
//@property(retain, nonatomic) NSMutableArray *videoURLArray; // @dynamic videoURLArray;
//@property(readonly, nonatomic) unsigned int videoURLArray_Count; // @dynamic videoURLArray_Count;
//
//@end

//@interface TTFAnswerStruct : GPBMessage
//{
//}
//
//+ (id)descriptor;
//
//// Remaining properties
//@property(nonatomic) long long activityId; // @dynamic activityId;
//@property(nonatomic) long long answerStartTsMs; // @dynamic answerStartTsMs;
//@property(retain, nonatomic) NSMutableArray *optionsArray; // @dynamic optionsArray;
//@property(readonly, nonatomic) unsigned int optionsArray_Count; // @dynamic optionsArray_Count;
//@property(nonatomic) long long questionId; // @dynamic questionId;
//@property(nonatomic) long long useLifeUsers; // @dynamic useLifeUsers;
//@property(nonatomic) long long uuQuestionId; // @dynamic uuQuestionId;
//
//@end

//@interface TTFOptionStruct : GPBMessage
//{
//}
//
//+ (id)descriptor;
//
//// Remaining properties
//@property(nonatomic) long long choosenUsers; // @dynamic choosenUsers;
//@property(retain, nonatomic) NSMutableArray *imageURLArray; // @dynamic imageURLArray;
//@property(readonly, nonatomic) unsigned int imageURLArray_Count; // @dynamic imageURLArray_Count;
//@property(nonatomic) long long optionId; // @dynamic optionId;
//@property(nonatomic) BOOL right; // @dynamic right;
//@property(copy, nonatomic) NSString *text; // @dynamic text;
//@property(retain, nonatomic) NSMutableArray *videoURLArray; // @dynamic videoURLArray;
//@property(readonly, nonatomic) unsigned int videoURLArray_Count; // @dynamic videoURLArray_Count;





#endif /* VideoHeaders_h */
