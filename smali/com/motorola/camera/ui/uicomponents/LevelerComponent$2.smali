.class public Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;
.super Landroid/view/OrientationEventListener;
.source "LevelerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/LevelerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 2
    iget v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    if-ne p1, v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_1

    .line 5
    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sub-int p1, v2, p1

    .line 6
    :cond_1
    iput p1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    .line 7
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v2, :cond_a

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 10
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    .line 11
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    add-int/lit16 v3, p1, -0xb4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v3, v1

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    .line 17
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    add-int/lit16 v2, v1, -0xb4

    .line 18
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/16 v3, 0x2d

    if-le v2, v3, :cond_4

    rsub-int v2, v2, 0x168

    .line 19
    iput v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    .line 20
    :cond_4
    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_5

    const/4 v4, 0x1

    .line 21
    :cond_5
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-eqz v3, :cond_6

    int-to-float p1, v1

    goto :goto_1

    :cond_6
    neg-int p1, p1

    int-to-float p1, p1

    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 22
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-ne v4, p1, :cond_7

    goto :goto_3

    .line 23
    :cond_7
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    :cond_9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_a
    :goto_3
    return-void
.end method
