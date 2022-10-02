.class public Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
.super Ljava/lang/Object;
.source "JsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/JsonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfigHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;
    }
.end annotation


# instance fields
.field public final m3ATimeoutFrames:I

.field public final mAnalogGainThreshold:F

.field public final mBarcodeDetectionBackoff:Z

.field public final mBarcodeDetectionEnabled:[Z

.field public final mBarcodeTimeBetweenScans:[I

.field public final mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public final mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

.field public final mDepthDualConfigInputBufferCnt:[I

.field public final mDepthDualConfigOutputBufferCnt:[I

.field public final mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

.field public final mDisableZslScenes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayCutoutConfigs:[F

.field public final mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

.field public final mDualConfigInputBufferCnt:[I

.field public final mDualConfigMaxJobCnt:[I

.field public final mDualConfigOutputBufferCnt:[I

.field public final mDualDepthConfigMaxJobCnt:[I

.field public final mEngineMfnrEstimate:J

.field public final mExtraFreeMemSizeMb:[I

.field public final mFlashAlpha:F

.field public final mFlashAwbSpeed:F

.field public final mFlashCctTable:Ljava/lang/String;

.field public final mFlashColor:I

.field public final mFlashDelay:J

.field public final mFlashLuxRange:[F

.field public final mFlashTorchEnable:Z

.field public final mFocusTimeoutDurationFlash:I

.field public final mFullFrameSkipPatternCnt:[I

.field public final mGainOnlyQcfaDecision:Z

.field public mGestureRemoveDelay:Z

.field public final mGoogleARStickersParameters:Lorg/json/JSONObject;

.field public final mGrallocUsageFlags:[Ljava/lang/String;

.field public final mLowMemKillSizeMb:[I

.field public final mMaxJobCntMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxJobSlipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxMultishotRates:[F

.field public final mMaxMultishotRatesLvl1:[F

.field public mMcfEnabled:Z

.field public final mMcfSlowCaptureModes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMotoFlashTuningEnable:[Z

.field public final mNonSingleSessionRemosaicEstimate:J

.field public final mNormalConfigInputBufferCnt:[I

.field public final mNormalConfigOutputBufferCnt:[I

.field public mOfflineReprocEnabled:[Z

.field public final mPanoDistortions:[D

.field public final mPhysicalCameraCount:I

.field public final mPreviewRateDepthLimit:[I

.field public final mPreviewRateLimitDefault:[I

.field public final mPreviewRateLimitLvl1:[I

.field public final mPreviewRateLimitLvl2:[I

.field public final mQuickCaptureVibrationConfigs:[I

.field public mReprocEnabled:Z

.field public final mRetryCount:I

.field public final mRetryDelays:[I

.field public final mSceneDetectionPlatform:Ljava/lang/String;

.field public final mSetRepeatingSendErrorDelay:I

.field public final mSingleConfigMaxJobCnt:[I

.field public final mSingleConfigNormalOverrideJobCnt:[I

.field public final mSingleConfigSpecialOverrideJobCnt:[I

.field public final mSingleSessionRemosaicEstimate:[J

.field public final mSingleSlipConfigMaxJobCnt:[I

.field public final mSkinToneCountryMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/SkinToneDetection$SkinTone;",
            ">;"
        }
    .end annotation
.end field

.field public final mSkinToneDetectionEnabled:Z

.field public final mSkinToneSkuMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/SkinToneDetection$SkinTone;",
            ">;"
        }
    .end annotation
.end field

.field public final mSlideScanConfigs:[F

.field public final mSnapShotMinInterval:I

.field public mSuperRemosaicTriggers:[F

.field public mSuperSlowMotionLib:Ljava/lang/String;

.field public final mSuperSlowMotionLowLightThreshold:I

.field public mTorchControlEnable:[Z

.field public mUseCustomNoiseReduction:[Z

.field public mUseHQPreview:[Z

.field public final mUseHighResolutionOutput:[Z

.field public final mZoomBlendingManualX:[F

.field public final mZoomBlendingSegments:[F

.field public final mZoomFactor:[F

.field public final mZoomOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/motorola/camera/JsonConfig$ZoomOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mZslDepthDualConfigInputBufferCnt:[I

.field public final mZslDepthDualConfigOutputBufferCnt:[I


# direct methods
.method public constructor <init>([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[I[ILjava/util/List;IIIZF[JJI[I[I[I[I[I[F[F[I[I[F[F[FI[ZIFJZ[FLjava/lang/String;F[ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Map;[ZF[Z[Z[FZZ[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/JsonConfig$CameraMapping;Ljava/util/HashSet;Ljava/util/HashSet;[DLorg/json/JSONObject;Lorg/json/JSONArray;I[F[I[ZLjava/util/Map;Ljava/util/Map;[Z[IZJZILjava/lang/String;[F)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigInputBufferCnt:[I

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigOutputBufferCnt:[I

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigInputBufferCnt:[I

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigOutputBufferCnt:[I

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigInputBufferCnt:[I

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigOutputBufferCnt:[I

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigInputBufferCnt:[I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigOutputBufferCnt:[I

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGrallocUsageFlags:[Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFullFrameSkipPatternCnt:[I

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigMaxJobCnt:[I

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigNormalOverrideJobCnt:[I

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigSpecialOverrideJobCnt:[I

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSlipConfigMaxJobCnt:[I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigMaxJobCnt:[I

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualDepthConfigMaxJobCnt:[I

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomOverride:Ljava/util/List;

    move/from16 v1, p18

    .line 19
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    move/from16 v1, p19

    .line 20
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    move/from16 v1, p20

    .line 21
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSetRepeatingSendErrorDelay:I

    move/from16 v1, p21

    .line 22
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAnalogGainThreshold:F

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    move-wide/from16 v1, p24

    .line 25
    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    move/from16 v1, p26

    .line 26
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryCount:I

    move-object/from16 v1, p27

    .line 27
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryDelays:[I

    move-object/from16 v1, p28

    .line 28
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitDefault:[I

    move-object/from16 v1, p29

    .line 29
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl1:[I

    move-object/from16 v1, p30

    .line 30
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl2:[I

    move-object/from16 v1, p31

    .line 31
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateDepthLimit:[I

    move-object/from16 v1, p32

    .line 32
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    move-object/from16 v1, p33

    .line 33
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    move-object/from16 v1, p34

    .line 34
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    move-object/from16 v1, p35

    .line 35
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    move-object/from16 v1, p36

    .line 36
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomFactor:[F

    move-object/from16 v1, p37

    .line 37
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    move-object/from16 v1, p38

    .line 38
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingManualX:[F

    move/from16 v1, p39

    .line 39
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSnapShotMinInterval:I

    move-object/from16 v1, p40

    .line 40
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHighResolutionOutput:[Z

    move/from16 v1, p41

    .line 41
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:I

    move/from16 v1, p42

    .line 42
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAlpha:F

    move-wide/from16 v1, p43

    .line 43
    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashDelay:J

    move/from16 v1, p45

    .line 44
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashTorchEnable:Z

    move-object/from16 v1, p46

    .line 45
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    move-object/from16 v1, p47

    .line 46
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashCctTable:Ljava/lang/String;

    move/from16 v1, p48

    .line 47
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    move-object/from16 v1, p49

    .line 48
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    move-object/from16 v1, p50

    .line 49
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSceneDetectionPlatform:Ljava/lang/String;

    move/from16 v1, p51

    .line 50
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneDetectionEnabled:Z

    move-object/from16 v1, p52

    .line 51
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneCountryMapping:Ljava/util/Map;

    move-object/from16 v1, p53

    .line 52
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneSkuMapping:Ljava/util/Map;

    move-object/from16 v1, p54

    .line 53
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMotoFlashTuningEnable:[Z

    move-object/from16 v1, p56

    .line 54
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseCustomNoiseReduction:[Z

    move-object/from16 v1, p57

    .line 55
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mOfflineReprocEnabled:[Z

    move-object/from16 v1, p58

    .line 56
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    move/from16 v1, p59

    .line 57
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfEnabled:Z

    move/from16 v1, p60

    .line 58
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mReprocEnabled:Z

    move-object/from16 v1, p61

    .line 59
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, p62

    .line 60
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, p63

    .line 61
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    move-object/from16 v1, p64

    .line 62
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableZslScenes:Ljava/util/HashSet;

    move-object/from16 v1, p65

    .line 63
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    move-object/from16 v1, p66

    .line 64
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoDistortions:[D

    move-object/from16 v1, p67

    .line 65
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGoogleARStickersParameters:Lorg/json/JSONObject;

    move-object/from16 v1, p68

    .line 66
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    move/from16 v1, p69

    .line 67
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPhysicalCameraCount:I

    move-object/from16 v1, p70

    .line 68
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutConfigs:[F

    move-object/from16 v1, p71

    .line 69
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    move-object/from16 v1, p72

    .line 70
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mTorchControlEnable:[Z

    move-object/from16 v1, p73

    .line 71
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobCntMap:Ljava/util/Map;

    move-object/from16 v1, p74

    .line 72
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobSlipMap:Ljava/util/Map;

    move-object/from16 v1, p75

    .line 73
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    move-object/from16 v1, p76

    .line 74
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeTimeBetweenScans:[I

    move/from16 v1, p77

    .line 75
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionBackoff:Z

    move-wide/from16 v1, p78

    .line 76
    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEngineMfnrEstimate:J

    move/from16 v1, p80

    .line 77
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGestureRemoveDelay:Z

    move/from16 v1, p81

    .line 78
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLowLightThreshold:I

    move-object/from16 v1, p82

    .line 79
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLib:Ljava/lang/String;

    move-object/from16 v1, p83

    .line 80
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSlideScanConfigs:[F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "DeviceConfigHolder{mNormalConfigInputBufferCnt="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigInputBufferCnt:[I

    const-string v2, ", mNormalConfigOutputBufferCnt="

    .line 2
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigOutputBufferCnt:[I

    const-string v2, ", mDualConfigInputBufferCnt="

    .line 3
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigInputBufferCnt:[I

    const-string v2, ", mDualConfigOutputBufferCnt="

    .line 4
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigOutputBufferCnt:[I

    const-string v2, ", mDepthDualConfigInputBufferCnt="

    .line 5
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigInputBufferCnt:[I

    const-string v2, ", mDepthDualConfigOutputBufferCnt="

    .line 6
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigOutputBufferCnt:[I

    const-string v2, ", mZslDepthDualConfigInputBufferCnt="

    .line 7
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigInputBufferCnt:[I

    const-string v2, ", mZslDepthDualConfigOutputBufferCnt="

    .line 8
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigOutputBufferCnt:[I

    const-string v2, ", mSingeConfigMaxJobCnt="

    .line 9
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigMaxJobCnt:[I

    const-string v2, ", mDualConfigMaxJobCnt="

    .line 10
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigMaxJobCnt:[I

    const-string v2, ", mSingleConfigNormalOverrideJobCnt="

    .line 11
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigNormalOverrideJobCnt:[I

    const-string v2, ", mSingleConfigSpecialOverrideJobCnt="

    .line 12
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigSpecialOverrideJobCnt:[I

    const-string v2, ", mSingleSlipConfigMaxJobCnt="

    .line 13
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSlipConfigMaxJobCnt:[I

    const-string v2, ", mDualDepthConfigMaxJobCnt="

    .line 14
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualDepthConfigMaxJobCnt:[I

    const-string v2, ", m3ATimeoutFrames="

    .line 15
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocusTimeoutDurationFlash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGainOnlyQcfaDecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAnalogGainThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAnalogGainThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSingleSessionRemosaicEstimate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNonSingleSessionRemosaicEstimate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryDelays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryDelays:[I

    const-string v2, ", mPreviewRateLimitDefault"

    .line 16
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitDefault:[I

    const-string v2, ", mPreviewRateLimitLvl1"

    .line 17
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl1:[I

    const-string v2, ", mPreviewRateLimitLvl2"

    .line 18
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl2:[I

    const-string v2, ", mPreviewRateDepthLimit"

    .line 19
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateDepthLimit:[I

    const-string v2, ", mMaxMultishotRates"

    .line 20
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxMultishotRatesLvl1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowMemKillSizeMb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    const-string v2, ", mExtraFreeMemSizeMb"

    .line 23
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    const-string v2, ", mZoomFactor"

    .line 24
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomFactor:[F

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomBlendingSegments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomBlendingManualX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingManualX:[F

    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapShotMinInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSnapShotMinInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashTorchEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashTorchEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashLuxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashCctTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashCctTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashAwbSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneDetectionPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSceneDetectionPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinToneDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinToneCountryMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneCountryMapping:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinToneSkuMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneSkuMapping:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMotoFlashTuningEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMotoFlashTuningEnable:[Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUseCustomNoiseReduction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseCustomNoiseReduction:[Z

    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOfflineReprocEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mOfflineReprocEnabled:[Z

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperRemosaicTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMcfEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReprocEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mReprocEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDepthSystemCalibrationDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraMappings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableZslScenes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableZslScenes:Ljava/util/HashSet;

    .line 34
    invoke-virtual {v1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMcfSlowCaptureModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    .line 35
    invoke-virtual {v1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPanoDistortions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoDistortions:[D

    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGoogleARStickersParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGoogleARStickersParameters:Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayCutoutsCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayCutoutConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutConfigs:[F

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mQuickCaptureVibrationConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    const-string v2, ", mTorchControlEnable="

    .line 39
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mTorchControlEnable:[Z

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBarcodeDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBarcodeTimeBetweenScans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeTimeBetweenScans:[I

    const-string v2, ", mEngineMfnrEstimate ="

    .line 42
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$$ExternalSyntheticOutline0;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEngineMfnrEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mGestureRemoveDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGestureRemoveDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperSlowMotionLowLightThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLowLightThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperSlowMotionLib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSlideScanConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSlideScanConfigs:[F

    .line 43
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
