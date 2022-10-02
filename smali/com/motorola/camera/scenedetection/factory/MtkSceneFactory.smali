.class public final Lcom/motorola/camera/scenedetection/factory/MtkSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "MtkSceneFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110021

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;II)V

    return-object p0
.end method

.method public getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110027

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;II)V

    return-object p0
.end method

.method public getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110028

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;II)V

    return-object p0
.end method
