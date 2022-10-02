.class public final Lcom/motorola/camera/scenedetection/scene/OpenLensScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SceneImpl.kt"


# instance fields
.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;II)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;I)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public doAction(Lcom/motorola/camera/EventListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/EventListener;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
