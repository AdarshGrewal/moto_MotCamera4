.class public Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;
.super Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.source "SuperSlowMotionActivityBindingImpl.java"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# static fields
.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final mCallback1:Landroid/view/View$OnClickListener;

.field public final mCallback2:Landroid/view/View$OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView10:Landroid/widget/TextView;

.field public final mboundView8:Landroidx/constraintlayout/widget/Group;

.field public final mboundView9:Landroidx/constraintlayout/widget/Group;

.field public superSlowMotionTrimBarvaluesAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0387

    const/16 v2, 0xb

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0380

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0383

    const/16 v2, 0xd

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0389

    const/16 v2, 0xe

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a037d

    const/16 v2, 0xf

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    .line 1
    sget-object v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    move-object/from16 v3, p1

    invoke-static {v3, v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v17

    const/16 v1, 0xf

    .line 2
    aget-object v1, v17, v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/4 v14, 0x2

    aget-object v1, v17, v14

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    const/16 v1, 0xc

    aget-object v1, v17, v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x5

    aget-object v1, v17, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    const/4 v1, 0x7

    aget-object v1, v17, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    const/16 v1, 0xd

    aget-object v1, v17, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, v17, v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, v17, v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x1

    aget-object v1, v17, v13

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/Button;

    const/16 v1, 0xb

    aget-object v1, v17, v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/Button;

    const/16 v1, 0xe

    aget-object v1, v17, v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, v17, v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/16 v4, 0xc

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, v16

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageButton;Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    .line 3
    new-instance v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;-><init>(Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v3, -0x1

    .line 4
    iput-wide v3, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    .line 5
    aget-object v1, v17, v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 7
    aget-object v1, v17, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 9
    aget-object v1, v17, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView8:Landroidx/constraintlayout/widget/Group;

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 11
    aget-object v1, v17, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0126

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 23
    monitor-enter p0

    const-wide/16 v0, 0x2000

    .line 24
    :try_start_0
    iput-wide v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 12

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    goto/16 :goto_2

    .line 4
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, p2

    :goto_0
    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalFrames:I

    .line 7
    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v0

    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->first([I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 9
    iget v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 10
    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->first([I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sub-int/2addr p2, v0

    .line 12
    iget p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 13
    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 16
    :goto_1
    new-instance v0, Ljava/util/Timer;

    const-string p1, "Super slow motion thumbnail timer"

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    .line 17
    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const-wide/16 v2, 0x0

    .line 18
    iget-wide v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    .line 19
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 20
    invoke-static {p0}, Lcom/moto/patternlibrary/R$id;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    .line 21
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    new-instance v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    const/4 p1, 0x0

    invoke-direct {v9, p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_6
    :goto_2
    return-void
.end method

.method public executeBindings()V
    .locals 61

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-wide/16 v6, 0x3fff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/32 v9, 0x800000

    const-wide/16 v13, 0x3000

    const-wide/16 v15, 0x3002

    const-wide/16 v17, 0x3001

    const-wide/16 v19, 0x3008

    const-wide/16 v21, 0x300c

    const-wide/16 v23, 0x3808

    const-wide/16 v25, 0x3048

    const-wide/16 v27, 0x3200

    const-wide/16 v29, 0x3100

    const-wide/16 v31, 0x3080

    const-wide/16 v33, 0x3400

    const/4 v7, 0x3

    const-wide/16 v37, 0x3020

    const/4 v8, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_2e

    and-long v42, v2, v17

    cmp-long v6, v42, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/LiveData;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v11, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v11

    :goto_2
    and-long v42, v2, v15

    cmp-long v42, v42, v4

    if-eqz v42, :cond_5

    if-eqz v0, :cond_3

    .line 10
    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 11
    :goto_3
    invoke-virtual {v1, v12, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_4

    .line 12
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 13
    :goto_4
    invoke-static {v15}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v15

    goto :goto_5

    :cond_5
    move v15, v11

    :goto_5
    and-long v44, v2, v13

    cmp-long v16, v44, v4

    if-eqz v16, :cond_6

    if-eqz v0, :cond_6

    .line 14
    iget v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    .line 15
    iget v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:I

    goto :goto_6

    :cond_6
    move v13, v11

    move v14, v13

    :goto_6
    and-long v46, v2, v21

    cmp-long v16, v46, v4

    if-eqz v16, :cond_a

    if-eqz v0, :cond_7

    .line 16
    iget-object v11, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/LiveData;

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    .line 17
    :goto_7
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_8

    .line 18
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    .line 19
    :goto_8
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v16, :cond_b

    if-eqz v11, :cond_9

    const-wide/32 v47, 0x20000000

    goto :goto_9

    :cond_9
    const-wide/32 v47, 0x10000000

    :goto_9
    or-long v2, v2, v47

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :cond_b
    :goto_a
    and-long v47, v2, v19

    cmp-long v16, v47, v4

    if-eqz v16, :cond_11

    if-eqz v0, :cond_c

    .line 20
    iget-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    .line 21
    :goto_b
    invoke-virtual {v1, v7, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_d

    .line 22
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Boolean;

    goto :goto_c

    :cond_d
    const/16 v48, 0x0

    .line 23
    :goto_c
    invoke-static/range {v48 .. v48}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v49

    if-eqz v16, :cond_f

    if-eqz v49, :cond_e

    or-long/2addr v2, v9

    goto :goto_d

    :cond_e
    const-wide/32 v39, 0x400000

    or-long v2, v2, v39

    :cond_f
    :goto_d
    if-eqz v49, :cond_10

    const/16 v16, 0x0

    goto :goto_e

    :cond_10
    const/16 v16, 0x8

    :goto_e
    const-wide/16 v35, 0x3010

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    const/16 v16, 0x0

    const-wide/16 v35, 0x3010

    const/16 v48, 0x0

    :goto_f
    and-long v49, v2, v35

    cmp-long v49, v49, v4

    if-eqz v49, :cond_13

    if-eqz v0, :cond_12

    .line 24
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/LiveData;

    goto :goto_10

    :cond_12
    const/4 v12, 0x0

    :goto_10
    const/4 v9, 0x4

    .line 25
    invoke-virtual {v1, v9, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_13

    .line 26
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_11

    :cond_13
    const/4 v9, 0x0

    :goto_11
    and-long v52, v2, v37

    cmp-long v10, v52, v4

    if-eqz v10, :cond_15

    if-eqz v0, :cond_14

    .line 27
    iget-object v10, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_12

    :cond_14
    const/4 v10, 0x0

    :goto_12
    const/4 v12, 0x5

    .line 28
    invoke-virtual {v1, v12, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_15

    .line 29
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    goto :goto_13

    :cond_15
    const/4 v10, 0x0

    :goto_13
    and-long v52, v2, v25

    cmp-long v12, v52, v4

    if-eqz v12, :cond_19

    if-eqz v0, :cond_16

    .line 30
    iget-object v7, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/LiveData;

    goto :goto_14

    :cond_16
    const/4 v7, 0x0

    :goto_14
    const/4 v4, 0x6

    .line 31
    invoke-virtual {v1, v4, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_17

    .line 32
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_15

    :cond_17
    const/4 v4, 0x0

    .line 33
    :goto_15
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v12, :cond_1a

    if-eqz v4, :cond_18

    const-wide/32 v55, 0x80000

    goto :goto_16

    :cond_18
    const-wide/32 v55, 0x40000

    :goto_16
    or-long v2, v2, v55

    goto :goto_17

    :cond_19
    const/4 v4, 0x0

    :cond_1a
    :goto_17
    and-long v55, v2, v31

    const-wide/16 v53, 0x0

    cmp-long v5, v55, v53

    if-eqz v5, :cond_1d

    if-eqz v0, :cond_1b

    .line 34
    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    goto :goto_18

    :cond_1b
    const/4 v5, 0x0

    :goto_18
    const/4 v7, 0x7

    .line 35
    invoke-virtual {v1, v7, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1c

    .line 36
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_19

    :cond_1c
    const/4 v5, 0x0

    .line 37
    :goto_19
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v5

    goto :goto_1a

    :cond_1d
    const/4 v5, 0x0

    :goto_1a
    and-long v55, v2, v29

    const-wide/16 v53, 0x0

    cmp-long v7, v55, v53

    if-eqz v7, :cond_23

    if-eqz v0, :cond_1e

    .line 38
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/LiveData;

    move/from16 v41, v4

    const/16 v4, 0x8

    goto :goto_1b

    :cond_1e
    move/from16 v41, v4

    const/16 v4, 0x8

    const/4 v12, 0x0

    .line 39
    :goto_1b
    invoke-virtual {v1, v4, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_1f

    .line 40
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1f
    const/4 v12, 0x0

    .line 41
    :goto_1c
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v7, :cond_21

    if-eqz v12, :cond_20

    const-wide/32 v55, 0x8000

    goto :goto_1d

    :cond_20
    const-wide/16 v55, 0x4000

    :goto_1d
    or-long v2, v2, v55

    :cond_21
    if-eqz v12, :cond_22

    goto :goto_1e

    :cond_22
    move v7, v4

    goto :goto_1f

    :cond_23
    move/from16 v41, v4

    const/16 v4, 0x8

    :goto_1e
    const/4 v7, 0x0

    :goto_1f
    and-long v55, v2, v27

    const-wide/16 v53, 0x0

    cmp-long v12, v55, v53

    if-eqz v12, :cond_25

    if-eqz v0, :cond_24

    .line 42
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    goto :goto_20

    :cond_24
    const/4 v12, 0x0

    :goto_20
    const/16 v4, 0x9

    .line 43
    invoke-virtual {v1, v4, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_25

    .line 44
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_21

    :cond_25
    const/4 v4, 0x0

    :goto_21
    and-long v56, v2, v33

    const-wide/16 v53, 0x0

    cmp-long v12, v56, v53

    if-eqz v12, :cond_28

    if-eqz v0, :cond_26

    .line 45
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/LiveData;

    move-object/from16 v56, v4

    goto :goto_22

    :cond_26
    move-object/from16 v56, v4

    const/4 v12, 0x0

    :goto_22
    const/16 v4, 0xa

    .line 46
    invoke-virtual {v1, v4, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_27

    .line 47
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_23

    :cond_27
    const/4 v4, 0x0

    .line 48
    :goto_23
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v4

    goto :goto_24

    :cond_28
    move-object/from16 v56, v4

    const/4 v4, 0x0

    :goto_24
    and-long v57, v2, v23

    const-wide/16 v53, 0x0

    cmp-long v12, v57, v53

    if-eqz v12, :cond_2c

    if-eqz v0, :cond_29

    move/from16 v57, v4

    .line 49
    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/LiveData;

    move/from16 v58, v5

    goto :goto_25

    :cond_29
    move/from16 v57, v4

    move/from16 v58, v5

    const/4 v4, 0x0

    :goto_25
    const/16 v5, 0xb

    .line 50
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_2a

    .line 51
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_26

    :cond_2a
    const/4 v4, 0x0

    .line 52
    :goto_26
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v12, :cond_2d

    if-eqz v4, :cond_2b

    const-wide/32 v59, 0x2000000

    goto :goto_27

    :cond_2b
    const-wide/32 v59, 0x1000000

    :goto_27
    or-long v2, v2, v59

    goto :goto_28

    :cond_2c
    move/from16 v57, v4

    move/from16 v58, v5

    const/4 v4, 0x0

    :cond_2d
    :goto_28
    move v5, v7

    move/from16 v12, v16

    move v7, v4

    move-object/from16 v16, v8

    move-object/from16 v4, v56

    move/from16 v8, v57

    move-object/from16 v56, v48

    move/from16 v48, v58

    goto :goto_29

    :cond_2e
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v41, 0x0

    const/16 v48, 0x0

    const/16 v56, 0x0

    :goto_29
    const-wide/32 v57, 0x22080000

    and-long v57, v2, v57

    const-wide/16 v53, 0x0

    cmp-long v57, v57, v53

    if-eqz v57, :cond_33

    if-eqz v0, :cond_2f

    .line 53
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_2a

    :cond_2f
    move-object/from16 v0, v16

    :goto_2a
    move/from16 v16, v14

    const/4 v14, 0x3

    .line 54
    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_30

    .line 55
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v56, v0

    check-cast v56, Ljava/lang/Boolean;

    .line 56
    :cond_30
    invoke-static/range {v56 .. v56}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    and-long v56, v2, v19

    const-wide/16 v52, 0x0

    cmp-long v14, v56, v52

    if-eqz v14, :cond_32

    if-eqz v0, :cond_31

    const-wide/32 v50, 0x800000

    or-long v2, v2, v50

    goto :goto_2b

    :cond_31
    const-wide/32 v39, 0x400000

    or-long v2, v2, v39

    :cond_32
    :goto_2b
    const/4 v14, 0x1

    xor-int/2addr v0, v14

    goto :goto_2c

    :cond_33
    move/from16 v16, v14

    const/4 v0, 0x0

    :goto_2c
    and-long v39, v2, v25

    const-wide/16 v50, 0x0

    cmp-long v14, v39, v50

    if-eqz v14, :cond_38

    if-eqz v41, :cond_34

    move/from16 v39, v0

    goto :goto_2d

    :cond_34
    const/16 v39, 0x0

    :goto_2d
    if-eqz v14, :cond_36

    if-eqz v39, :cond_35

    const-wide/32 v40, 0x8000000

    goto :goto_2e

    :cond_35
    const-wide/32 v40, 0x4000000

    :goto_2e
    or-long v2, v2, v40

    :cond_36
    if-eqz v39, :cond_37

    goto :goto_2f

    :cond_37
    const/16 v14, 0x8

    goto :goto_30

    :cond_38
    :goto_2f
    const/4 v14, 0x0

    :goto_30
    and-long v39, v2, v23

    const-wide/16 v50, 0x0

    cmp-long v39, v39, v50

    if-eqz v39, :cond_3d

    if-eqz v7, :cond_39

    move v7, v0

    goto :goto_31

    :cond_39
    const/4 v7, 0x0

    :goto_31
    if-eqz v39, :cond_3b

    if-eqz v7, :cond_3a

    const-wide/32 v39, 0x20000

    goto :goto_32

    :cond_3a
    const-wide/32 v39, 0x10000

    :goto_32
    or-long v2, v2, v39

    :cond_3b
    if-eqz v7, :cond_3c

    goto :goto_33

    :cond_3c
    const/16 v7, 0x8

    goto :goto_34

    :cond_3d
    :goto_33
    const/4 v7, 0x0

    :goto_34
    and-long v39, v2, v21

    const-wide/16 v50, 0x0

    cmp-long v39, v39, v50

    if-eqz v39, :cond_42

    if-eqz v11, :cond_3e

    goto :goto_35

    :cond_3e
    const/4 v0, 0x0

    :goto_35
    if-eqz v39, :cond_40

    if-eqz v0, :cond_3f

    const-wide/32 v39, 0x200000

    goto :goto_36

    :cond_3f
    const-wide/32 v39, 0x100000

    :goto_36
    or-long v2, v2, v39

    :cond_40
    if-eqz v0, :cond_41

    goto :goto_37

    :cond_41
    const/16 v11, 0x8

    goto :goto_38

    :cond_42
    :goto_37
    const/4 v11, 0x0

    :goto_38
    and-long v19, v2, v19

    const-wide/16 v39, 0x0

    cmp-long v0, v19, v39

    if-eqz v0, :cond_43

    .line 57
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_43
    and-long v19, v2, v23

    cmp-long v0, v19, v39

    if-eqz v0, :cond_44

    .line 58
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView8:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_44
    and-long v19, v2, v21

    cmp-long v0, v19, v39

    if-eqz v0, :cond_45

    .line 59
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_45
    const-wide/16 v11, 0x2000

    and-long/2addr v11, v2

    cmp-long v0, v11, v39

    if-eqz v0, :cond_46

    .line 60
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-string/jumbo v11, "view"

    .line 63
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "attrChange"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object v0

    new-instance v11, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;

    invoke-direct {v11, v7}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;-><init>(Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_46
    and-long v11, v2, v17

    const-wide/16 v17, 0x0

    cmp-long v0, v11, v17

    if-eqz v0, :cond_47

    .line 65
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_47
    and-long v6, v2, v33

    cmp-long v0, v6, v17

    if-eqz v0, :cond_48

    .line 66
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_48
    and-long v6, v2, v25

    cmp-long v0, v6, v17

    if-eqz v0, :cond_49

    .line 67
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setVisibility(I)V

    :cond_49
    const-wide/16 v6, 0x3010

    and-long/2addr v6, v2

    cmp-long v0, v6, v17

    if-eqz v0, :cond_54

    .line 68
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eq v9, v6, :cond_54

    if-nez v9, :cond_4a

    .line 70
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4a

    goto :goto_3f

    .line 71
    :cond_4a
    instance-of v7, v9, Landroid/text/Spanned;

    if-eqz v7, :cond_4b

    .line 72
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    goto :goto_3f

    :cond_4b
    if-nez v9, :cond_4c

    const/4 v7, 0x1

    goto :goto_39

    :cond_4c
    const/4 v7, 0x0

    :goto_39
    if-nez v6, :cond_4d

    const/4 v8, 0x1

    goto :goto_3a

    :cond_4d
    const/4 v8, 0x0

    :goto_3a
    if-eq v7, v8, :cond_4e

    goto :goto_3c

    :cond_4e
    if-nez v9, :cond_4f

    goto :goto_3d

    .line 73
    :cond_4f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 74
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_50

    goto :goto_3c

    :cond_50
    const/4 v8, 0x0

    :goto_3b
    if-ge v8, v7, :cond_52

    .line 75
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_51

    :goto_3c
    const/4 v6, 0x1

    goto :goto_3e

    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_52
    :goto_3d
    const/4 v6, 0x0

    :goto_3e
    if-nez v6, :cond_53

    goto :goto_3f

    .line 76
    :cond_53
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    :goto_3f
    and-long v6, v2, v29

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_55

    .line 77
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_55
    and-long v5, v2, v27

    cmp-long v0, v5, v8

    if-eqz v0, :cond_5a

    .line 78
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    const-string v5, "imageView"

    .line 79
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v4, :cond_56

    .line 80
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_56
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v7, v6, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_57

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_40

    :cond_57
    move-object v6, v5

    :goto_40
    if-nez v6, :cond_58

    move-object v11, v5

    goto :goto_42

    .line 82
    :cond_58
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v7

    if-lez v7, :cond_59

    .line 84
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->getId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_41

    :cond_59
    const/4 v8, 0x1

    move-object v6, v5

    .line 85
    :goto_41
    new-instance v7, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v9, 0x2

    new-array v11, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v6, v11, v9

    aput-object v5, v11, v8

    invoke-direct {v7, v11}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 88
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 89
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_42
    if-nez v11, :cond_5a

    .line 90
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 92
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    aput-object v7, v6, v4

    .line 93
    invoke-direct {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5a
    const-wide/16 v4, 0x3002

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5b

    .line 94
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 95
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v15}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    :cond_5b
    and-long v4, v2, v37

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5c

    .line 97
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 98
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "newValue"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v4

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 100
    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    :cond_5c
    const-wide/16 v4, 0x3000

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5e

    .line 101
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 102
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMaximumRange()I

    move-result v4

    if-eq v4, v13, :cond_5d

    .line 104
    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMaximumRange(I)V

    .line 105
    :cond_5d
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 106
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMinimumRange()I

    move-result v4

    move/from16 v14, v16

    if-eq v4, v14, :cond_5e

    .line 108
    invoke-virtual {v0, v14}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMinimumRange(I)V

    :cond_5e
    and-long v2, v2, v31

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5f

    .line 109
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "view"

    .line 110
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, v48

    .line 111
    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadFrame(I)V

    :cond_5f
    return-void

    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 5
    :pswitch_1
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 8
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 9
    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 13
    :pswitch_3
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 16
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 17
    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 20
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 21
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 24
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    move v0, v1

    :goto_5
    return v0

    .line 25
    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_6

    .line 26
    monitor-enter p0

    .line 27
    :try_start_6
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 28
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    move v0, v1

    :goto_6
    return v0

    .line 29
    :pswitch_7
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 32
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    move v0, v1

    :goto_7
    return v0

    .line 33
    :pswitch_8
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 36
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    move v0, v1

    :goto_8
    return v0

    .line 37
    :pswitch_9
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 40
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    move v0, v1

    :goto_9
    return v0

    .line 41
    :pswitch_a
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_a

    .line 42
    monitor-enter p0

    .line 43
    :try_start_a
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 44
    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    move v0, v1

    :goto_a
    return v0

    .line 45
    :pswitch_b
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_b

    .line 46
    monitor-enter p0

    .line 47
    :try_start_b
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 48
    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    move v0, v1

    :goto_b
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
