.class public final Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$slowMotionSaveListener$1;
.super Ljava/lang/Object;
.source "SuperSlowMotionComponent.kt"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$slowMotionSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaveComplete(Lcom/motorola/camera/storage/MediaFile;)V
    .locals 3

    const-string v0, "mediaFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$slowMotionSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    :cond_3
    :goto_1
    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$slowMotionSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->trySlowMotionReady(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$slowMotionSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$Companion;

    .line 5
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$Companion;

    const-string p1, "SuperSlowMotionComponent"

    const-string v0, "onSaveError"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionError:Z

    :cond_2
    :goto_1
    return-void
.end method
