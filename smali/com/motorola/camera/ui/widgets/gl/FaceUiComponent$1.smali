.class public Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;
.super Ljava/lang/Object;
.source "FaceUiComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->onFaceDetected([Landroid/hardware/camera2/params/Face;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

.field public final synthetic val$data:[Landroid/hardware/camera2/params/Face;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 3
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 5
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->access$300(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->handleFaceData([Landroid/hardware/camera2/params/Face;)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 16
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
