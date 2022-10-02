.class public final Lcom/motorola/camera/scenedetection/factory/SLSISceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SLSISceneFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    .line 2
    sget-object v7, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    const v3, 0x7f11001f

    const-wide/16 v4, 0xb

    const/4 v6, 0x1

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110021

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110023

    const-wide/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    .line 2
    sget-object v7, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    const v3, 0x7f110025

    const-wide/16 v4, 0xa

    const/4 v6, 0x1

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110026

    const-wide/16 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110027

    const-wide/16 v4, 0x9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110028

    const-wide/16 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110026

    const-wide/16 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method
