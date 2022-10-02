.class public Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "FaceUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->runFadeRunnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;

    .line 3
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;

    .line 4
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mMaxNumberOfFaces:I

    if-ge p1, v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iput p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;

    .line 3
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;

    .line 4
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mMaxNumberOfFaces:I

    if-ge p1, v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
