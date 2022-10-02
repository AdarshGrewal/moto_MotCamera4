.class public final Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "DisplayCutoutCircleComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;,
        Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;,
        Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayCutoutCircleComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayCutoutCircleComponent.kt\ncom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,294:1\n1849#2,2:295\n*S KotlinDebug\n*F\n+ 1 DisplayCutoutCircleComponent.kt\ncom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent\n*L\n60#1:295,2\n*E\n"
.end annotation


# static fields
.field public static final BRIGHT_ALPHA:F

.field public static final Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

.field public static final DARK_ALPHA:F

.field public static GROWN_SIZE:F

.field public static final HIDE_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFLATION_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static SHRUNKEN_SIZE:F


# instance fields
.field public circleOne:Landroid/widget/ImageView;

.field public circleTwo:Landroid/widget/ImageView;

.field public final cutoutsCoordinates$delegate:Lkotlin/Lazy;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public shutterButtonVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_WAIT_LOADING_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/List;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v4, "CINEMAGRAPH_WAIT_FOR_MEMORY_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v3

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v4, "MULTI_SHOT_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v4, "SS_WAIT_FOR_MEMORY_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v5, "VIDEO_WAIT_FOR_MEMORY_KEY"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 7
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v6, "SELFIEWIDE_SHOT_KEY"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->HIDE_STATES:Ljava/util/List;

    .line 9
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutConfigs:[F

    const-string v2, "getDisplayCutoutConfigs()"

    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    aget v2, v1, v3

    sput v2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    .line 12
    aget v0, v1, v0

    sput v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    .line 13
    aget v0, v1, v4

    sput v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->BRIGHT_ALPHA:F

    .line 14
    aget v0, v1, v5

    sput v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->DARK_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$cutoutsCoordinates$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$cutoutsCoordinates$2;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->cutoutsCoordinates$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getCutoutsCoordinates()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->cutoutsCoordinates$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getDirectionX(FF)F
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 3
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    neg-int p0, v0

    int-to-float p0, p0

    add-float/2addr p0, p1

    add-float/2addr p0, p2

    goto :goto_0

    :cond_0
    sub-float p0, p1, p2

    :goto_0
    return p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/List;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->HIDE_STATES:Ljava/util/List;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 9
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 11
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 13
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    const-string v0, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->remove()V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 7
    sget v3, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getCutoutsCoordinates()Ljava/util/ArrayList;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 12
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800e3

    sget-object v7, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 14
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v0

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 16
    :goto_2
    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_3
    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v6, -0x1000000

    .line 17
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_4
    if-nez v5, :cond_5

    goto :goto_5

    .line 18
    :cond_5
    sget v6, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    float-to-int v7, v6

    float-to-int v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 19
    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget v3, v3, Landroid/graphics/PointF;->x:F

    sget v5, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 21
    sget v3, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    sget v5, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v6

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 22
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 24
    :cond_6
    :goto_6
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v2, "mParentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;-><init>(Landroid/view/View;)V

    .line 25
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 26
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleOne:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleOne:Landroid/widget/ImageView;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 28
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleTwo:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleTwo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 30
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleOne:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleAnimatorSet(Landroid/widget/ImageView;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleTwo:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleAnimatorSet(Landroid/widget/ImageView;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 31
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v2, v0, v1

    .line 9
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->unregisterShutterButtonListener()V

    .line 13
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 14
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->HIDE_STATES:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 18
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->unregisterShutterButtonListener()V

    .line 20
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 21
    :cond_7
    :goto_1
    sget-object p1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    invoke-static {p1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;->access$visibleAllowed(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 23
    :cond_8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final unregisterShutterButtonListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->shutterButtonVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->shutterButtonVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :goto_0
    return-void
.end method

.method public viewStubInflationStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
