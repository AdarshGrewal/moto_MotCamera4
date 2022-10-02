.class public abstract Lcom/motorola/camera/scenedetection/scene/ActionScene;
.super Ljava/lang/Object;
.source "SceneImpl.kt"

# interfaces
.implements Lcom/motorola/camera/scenedetection/scene/Scene;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final optType:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

.field public final sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public final textResource:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->optType:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    .line 4
    iput p4, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->textResource:I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract doAction(Lcom/motorola/camera/EventListener;)V
.end method

.method public getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->optType:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    return-object p0
.end method

.method public getPersistOnLensSwitch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public getTextResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->textResource:I

    return p0
.end method
