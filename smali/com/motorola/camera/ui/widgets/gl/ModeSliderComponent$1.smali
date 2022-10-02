.class public Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;
.super Ljava/lang/Object;
.source "ModeSliderComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmptySpaceTap(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Landroid/graphics/PointF;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p1, p2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/high16 v0, 0x42400000    # 48.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 9
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 10
    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 11
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v1, v0

    sub-float v0, v2, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 14
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 15
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    .line 16
    iget p1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p1, v3

    if-lez p2, :cond_1

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p2, v0

    add-float/2addr p2, v3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 17
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEmptySpaceTouched(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 4
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_0
    return-void
.end method

.method public onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 2
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mIsIdle:Z

    if-eqz p1, :cond_3

    .line 3
    instance-of p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_3

    .line 4
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress(Z)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_3

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 16
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    const/4 p3, 0x6

    if-eqz p1, :cond_2

    .line 17
    move-object p1, p2

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFirstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const-string v2, "SLIDER_TAG"

    .line 21
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const-string v2, "SLIDER_CELL_POS"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "SLIDER_POINT"

    .line 23
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    const-string p2, "SLIDER_CLICK"

    .line 25
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 27
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    .line 31
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 35
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 37
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSlider()V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->beginEdit()V

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 40
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFirstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 41
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 42
    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 43
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 44
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    .line 46
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 48
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress(Z)V

    :cond_0
    return-void
.end method

.method public onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress(Z)V

    :cond_0
    return-void
.end method
