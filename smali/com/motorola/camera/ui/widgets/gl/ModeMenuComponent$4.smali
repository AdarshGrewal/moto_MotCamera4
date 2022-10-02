.class public Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;
.super Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;
.source "ModeMenuComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V

    return-void
.end method


# virtual methods
.method public drag(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->drag(Landroid/os/Bundle;)V

    const-string v0, "DELTA_VALUE"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const-string p0, "ENABLE"

    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string p0, "ORIGIN"

    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string p0, "IS_TOUCHED"

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    return-void
.end method

.method public onDragEnd(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method
