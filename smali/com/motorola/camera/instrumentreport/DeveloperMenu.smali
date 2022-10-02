.class public Lcom/motorola/camera/instrumentreport/DeveloperMenu;
.super Ljava/lang/Object;
.source "DeveloperMenu.java"


# direct methods
.method public static isMenuEnabled()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "qe 1/1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mMonkeyUser:Z

    if-nez v4, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/Util;->isProductionBuild()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static isReportEnabled(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x1f

    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
