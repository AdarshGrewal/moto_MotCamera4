.class public Lcom/motorola/camera/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# direct methods
.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 3
    new-instance v2, Lcom/motorola/camera/settings/Setting;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, p3, v3}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 4
    iput-object v1, v2, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 5
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 8
    iput-object p4, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 9
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 12
    new-instance v2, Lcom/motorola/camera/settings/Setting;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, p3, v3}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {v2, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 15
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iput-object v1, v2, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 17
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 19
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_1

    .line 20
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 22
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 23
    aget v0, p5, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iput-object p6, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 26
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 42
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 43
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_2

    .line 44
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 45
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 46
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 47
    aget v0, p5, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 48
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_1

    .line 49
    aget v0, p6, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p7, p2, :cond_3

    .line 51
    iput p7, v1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_3
    if-eq p8, p2, :cond_4

    .line 52
    iput p8, v1, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 53
    :cond_4
    iput-object p9, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 54
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 55
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 56
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v1, v0, p2, p3, p10}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_2

    .line 57
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 58
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 59
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 60
    aget p10, p5, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    .line 61
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v0, p3, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_1

    .line 62
    aget p10, p6, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    .line 63
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v0, p3, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p7, p2, :cond_3

    .line 64
    iput p7, v1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_3
    if-eq p8, p2, :cond_4

    .line 65
    iput p8, v1, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 66
    :cond_4
    iput-object p9, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 67
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 27
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 28
    new-instance v1, Lcom/motorola/camera/settings/Setting;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz p4, :cond_3

    .line 29
    invoke-virtual {v1, p4}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 30
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 31
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 32
    aget v0, p5, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_1

    .line 34
    aget v0, p6, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p7, :cond_2

    .line 36
    aget v0, p7, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    if-eq p8, p2, :cond_4

    .line 38
    iput p8, v1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    :cond_4
    if-eq p9, p2, :cond_5

    .line 39
    iput p9, v1, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 40
    :cond_5
    iput-object p10, v1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 41
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSettingsMap()Ljava/util/Map;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;"
        }
    .end annotation

    const-string v1, "SettingsFactory"

    .line 1
    sget-object v12, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error: JSON parsing exception "

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MARGIN_THRESH_TO_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_TARGET_MARGIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_LAST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v28, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 13
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 15
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 16
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 18
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PANORAMA_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 21
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 22
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 26
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 27
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GALLERY_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 28
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_WHEEL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 29
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_WHEEL_ANIMATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 30
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 31
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 33
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ALWAYS_AWARE_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AA_FIRST_USE_VALUES:Ljava/util/List;

    .line 35
    invoke-static {v11, v0, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TIMELAPSE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 38
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MONO_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 39
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SET_PURE_RAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 40
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 41
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MODE_DRAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 42
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SMART_CAM_TIP_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 43
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SMART_CAM_DISABLE_TIP_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 44
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 45
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_EXIT_CAMERA_AFTER_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 46
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXITED_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 47
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 48
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 49
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 50
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 51
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 52
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 53
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 55
    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 56
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SHOW_PORTRAIT_EDITOR_NOTIFICATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 57
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 58
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 59
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOOLTIP_DISMISSED_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11, v0, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 60
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AR_STICKERS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 61
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_SUPER_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 62
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AI_SCENE_ADJUSTMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 63
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_AI_SCENE_DETECTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 64
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 65
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_WIFI_SUGGESTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 66
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 67
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 68
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PORTRAIT_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 69
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_RECORD_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 70
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 71
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 72
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v10, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 73
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 74
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v0, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 75
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_TORCH_OFF:Ljava/util/List;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    const v23, 0x7f110314

    const v6, 0x7f110343

    sget-object v15, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/16 v29, 0x4

    const v24, 0x7f110343

    move-object/from16 v30, v15

    move-object v15, v11

    move/from16 v18, v29

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v25, v30

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 76
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_OFF:Ljava/util/List;

    invoke-static {v11, v3, v4, v2, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 77
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v3, v4, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 78
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    new-array v3, v0, [I

    fill-array-data v3, :array_4

    new-array v4, v0, [I

    fill-array-data v4, :array_5

    const v23, 0x7f110336

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v24, v6

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 79
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_VALUES:Ljava/util/List;

    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    new-array v6, v3, [I

    fill-array-data v6, :array_7

    new-array v15, v3, [I

    fill-array-data v15, :array_8

    const v31, 0x7f110347

    const v32, 0x7f110347

    const v33, 0x7f110347

    const v34, 0x7f110347

    move-object/from16 v22, v15

    move-object v15, v11

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move/from16 v23, v33

    move/from16 v24, v34

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 80
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->HDR_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    new-array v6, v3, [I

    fill-array-data v6, :array_a

    new-array v15, v3, [I

    fill-array-data v15, :array_b

    const/16 v29, 0x2

    move-object/from16 v22, v15

    move-object v15, v11

    move/from16 v18, v29

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 81
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->HDR_BACK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    new-array v6, v3, [I

    fill-array-data v6, :array_d

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v3

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 82
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_3D_HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    new-array v4, v2, [I

    fill-array-data v4, :array_10

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    const/16 v18, 0x4

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move/from16 v23, v31

    move/from16 v24, v32

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 83
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v15, v2, [I

    fill-array-data v15, :array_12

    const/16 v16, 0x2

    const/4 v4, 0x1

    move-object v2, v11

    move/from16 v29, v4

    move-object v4, v8

    move-object/from16 v35, v5

    move/from16 v5, v16

    move-object/from16 v31, v6

    move-object v6, v9

    move/from16 v32, v7

    move-object v7, v15

    move-object v15, v8

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 84
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_13

    const/16 v33, 0x2

    move-object v2, v11

    move-object v4, v10

    move/from16 v5, v33

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 85
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 86
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_VALUES:Ljava/util/List;

    new-array v7, v0, [I

    fill-array-data v7, :array_14

    .line 87
    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 88
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 89
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 90
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v3, [I

    fill-array-data v7, :array_15

    move-object v2, v11

    move-object v3, v0

    move-object v4, v10

    move-object v6, v9

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 91
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_16

    move-object v4, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 92
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_17

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 93
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_18

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 94
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_19

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 95
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_1a

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 96
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_1b

    new-array v8, v0, [I

    fill-array-data v8, :array_1c

    const v16, 0x7f110210

    const v17, 0x7f110210

    move-object/from16 v34, v9

    move/from16 v9, v16

    move-object/from16 v36, v10

    move/from16 v10, v17

    move-object/from16 v37, v11

    move-object v11, v12

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 97
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_1d

    move-object/from16 v2, v37

    move-object/from16 v6, v34

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 98
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_1e

    move-object/from16 v4, v36

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 99
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v2, v0, [I

    fill-array-data v2, :array_1f

    new-array v3, v0, [I

    fill-array-data v3, :array_20

    new-array v4, v0, [I

    fill-array-data v4, :array_21

    const v23, 0x7f1101f2

    const v24, 0x7f1101f2

    const/4 v5, 0x2

    move-object v11, v15

    move-object/from16 v15, v37

    move-object/from16 v17, v11

    move/from16 v18, v5

    move-object/from16 v19, v34

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 100
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v2, v0, [I

    fill-array-data v2, :array_22

    new-array v3, v0, [I

    fill-array-data v3, :array_23

    new-array v4, v0, [I

    fill-array-data v4, :array_24

    const v23, 0x7f1101f0

    const v24, 0x7f1101f0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 101
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v0, [I

    fill-array-data v7, :array_25

    move-object/from16 v2, v37

    move-object v4, v11

    move/from16 v5, v33

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 102
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v34

    invoke-static {v15, v2, v11, v0, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 103
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->STORAGE_VALUES:Ljava/util/List;

    new-array v7, v0, [I

    fill-array-data v7, :array_26

    new-array v8, v0, [I

    fill-array-data v8, :array_27

    const v9, 0x7f11036f

    const/4 v0, -0x1

    sget-object v16, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v2, v15

    move-object/from16 v38, v10

    move v10, v0

    move-object v0, v11

    move-object/from16 v11, v16

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 104
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    move-object/from16 v11, v36

    move-object/from16 v10, v38

    invoke-static {v15, v2, v11, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 105
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    move/from16 v9, v29

    invoke-static {v15, v2, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 106
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v3, [I

    fill-array-data v7, :array_28

    sget-object v8, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v2, v15

    move-object v3, v4

    move-object v4, v0

    move-object v6, v10

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 107
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 108
    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 109
    new-instance v4, Lcom/motorola/camera/settings/Setting;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v11, v5, v9}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v10, :cond_0

    .line 110
    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v7, v32

    .line 111
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_0

    .line 112
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 113
    :cond_0
    iput-object v12, v4, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 114
    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_29

    const/16 v16, 0x2

    move-object v2, v15

    move-object v4, v0

    move/from16 v5, v16

    move-object v6, v10

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 116
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_2a

    move-object v2, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 117
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->TIMER_VALUES:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_2b

    new-array v8, v2, [I

    fill-array-data v8, :array_2c

    const v16, 0x7f110332

    const v17, 0x7f110370

    const/4 v5, 0x4

    move-object v2, v15

    move/from16 v29, v9

    move/from16 v9, v16

    move-object/from16 v39, v10

    move/from16 v10, v17

    move-object/from16 v33, v1

    move-object v1, v11

    move-object v11, v12

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 118
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/16 v2, 0x1f

    new-array v7, v2, [I

    fill-array-data v7, :array_2d

    new-array v8, v2, [I

    fill-array-data v8, :array_2e

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x2

    move-object v2, v15

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 119
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 120
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v11, ""

    invoke-static {v15, v2, v11, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 121
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v11, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 122
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION_VALUES:Ljava/util/List;

    new-array v7, v4, [I

    fill-array-data v7, :array_2f

    const/4 v8, 0x2

    move-object v2, v15

    move-object v4, v5

    move v5, v8

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 123
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 124
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 125
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_MODE_VALUES_1:Ljava/util/List;

    .line 126
    sget-object v10, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 127
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    const/4 v7, 0x2

    move/from16 v9, v29

    invoke-direct {v6, v4, v3, v7, v9}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v6, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    move/from16 v7, v32

    .line 129
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_1

    .line 130
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 131
    :cond_1
    iput-object v10, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 132
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_MODE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    move-object/from16 v8, v39

    invoke-static {v15, v2, v1, v3, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 134
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 135
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v3, v6, v6}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 136
    iput-object v10, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 137
    invoke-virtual {v15, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 139
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    invoke-direct {v5, v4, v3, v6, v6}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 140
    iput-object v10, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 141
    invoke-virtual {v15, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_AE_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 143
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v16, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v29, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_VALUES:Ljava/util/List;

    const/16 v2, 0xc

    new-array v7, v2, [I

    fill-array-data v7, :array_30

    new-array v6, v2, [I

    fill-array-data v6, :array_31

    const v17, 0x7f110310

    const v18, 0x7f110310

    const/4 v5, 0x2

    move-object v2, v15

    move-object/from16 v4, v16

    move-object/from16 v19, v6

    move-object/from16 v6, v29

    move-object/from16 v40, v8

    move-object/from16 v8, v19

    move/from16 v34, v9

    move/from16 v9, v17

    move-object/from16 v41, v10

    move/from16 v10, v18

    move-wide/from16 v36, v13

    move-object v13, v11

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 144
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    move/from16 v11, v32

    .line 145
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Size;

    const-string v2, "resolutions"

    .line 146
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-interface {v14}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    .line 148
    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 149
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {v14}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    const v9, 0x7f11032a

    const v10, 0x7f11032a

    const/4 v5, 0x2

    move-object v2, v15

    move-object v6, v14

    move-object/from16 v32, v13

    move v13, v11

    move-object/from16 v11, v30

    .line 152
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 153
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v38, 0x1e

    .line 154
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->FRAME_RATE_VALUES:Ljava/util/List;

    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_32

    new-array v8, v2, [I

    fill-array-data v8, :array_33

    const v9, 0x7f11031c

    const v10, 0x7f11031c

    const/4 v5, 0x4

    move-object v2, v15

    move-object/from16 v6, v17

    .line 155
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 156
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v2, 0xc

    new-array v7, v2, [I

    fill-array-data v7, :array_34

    new-array v8, v2, [I

    fill-array-data v8, :array_35

    const v9, 0x7f110310

    const v10, 0x7f110310

    const/16 v18, 0x2

    move-object v2, v15

    move-object/from16 v4, v16

    move/from16 v5, v18

    move-object/from16 v6, v29

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 157
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 158
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Size;

    .line 159
    invoke-static {v14}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper;->getVideoResolutionStrings(Ljava/util/List;)[I

    move-result-object v7

    .line 160
    invoke-static {v14}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper;->getVideoResolutionIcons(Ljava/util/List;)[I

    move-result-object v8

    const v9, 0x7f11032a

    const v10, 0x7f11032a

    move-object v2, v15

    move-object v6, v14

    .line 161
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 162
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 163
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_36

    new-array v8, v2, [I

    fill-array-data v8, :array_37

    const v9, 0x7f11031c

    const v10, 0x7f11031c

    const/4 v5, 0x4

    move-object v2, v15

    move-object/from16 v6, v17

    .line 164
    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 165
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMCORDER_PROFILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v14, v34

    invoke-static {v15, v2, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 166
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 167
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    new-array v2, v2, [I

    fill-array-data v2, :array_39

    const v22, 0x7f11032f

    const v23, 0x7f11045b

    const/16 v25, 0x2

    const/16 v34, 0x2

    move-object v11, v15

    move/from16 v18, v34

    move-object/from16 v19, v31

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v24, v30

    invoke-static/range {v15 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;I)V

    .line 168
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL_ON_OFF:Ljava/util/List;

    new-array v7, v5, [I

    fill-array-data v7, :array_3a

    new-array v8, v5, [I

    fill-array-data v8, :array_3b

    const v9, 0x7f110326

    const v10, 0x7f110437

    const/4 v5, 0x2

    move-object v2, v11

    move-object v11, v12

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 169
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EXTERNAL_MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 170
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL:Ljava/util/List;

    .line 171
    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 172
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v5, [I

    fill-array-data v7, :array_3c

    new-array v8, v5, [I

    fill-array-data v8, :array_3d

    const v9, 0x7f11032f

    const v10, 0x7f11045b

    move-object v2, v15

    move-object/from16 v6, v31

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 173
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DTFE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    move-object/from16 v11, v40

    invoke-static {v15, v2, v1, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 174
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI_WEIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 175
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v5, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 176
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 177
    invoke-static {v15, v2, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 178
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 179
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 180
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_LOCATION:Landroid/location/Location;

    invoke-static {v15, v2, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 181
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 182
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ADDRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v32

    invoke-static {v15, v2, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 183
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 184
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 185
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 186
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 187
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 188
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 189
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING_VALUES:Ljava/util/List;

    .line 190
    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 191
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 192
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v13, v6, v6}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    move-object/from16 v9, v41

    .line 193
    iput-object v9, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 194
    invoke-virtual {v15, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 196
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 197
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v30

    invoke-static {v15, v2, v13, v3, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 198
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 199
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 200
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHOW_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 201
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/16 v2, 0xc

    new-array v7, v2, [I

    fill-array-data v7, :array_3e

    new-array v6, v2, [I

    fill-array-data v6, :array_3f

    const v16, 0x7f110310

    const v17, 0x7f110310

    move-object v2, v15

    move/from16 v5, v34

    move-object/from16 v18, v6

    move-object/from16 v6, v29

    move-object/from16 v8, v18

    move-object/from16 v42, v9

    move/from16 v9, v16

    move-object/from16 v43, v10

    move/from16 v10, v17

    move-object v14, v11

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 202
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 203
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 204
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 205
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 206
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    .line 207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const v7, 0x7f11043f

    .line 208
    new-instance v8, Lcom/motorola/camera/settings/Setting;

    const/4 v9, 0x3

    invoke-direct {v8, v6, v5, v9, v3}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 209
    iput v7, v8, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 210
    iput-object v12, v8, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 211
    invoke-virtual {v15, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION_PRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 213
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AA_OCR_VALUES:Ljava/util/List;

    const/4 v5, 0x2

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 214
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 215
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 216
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 217
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_CAPTURE_RESULT_KEYS:[Ljava/lang/String;

    invoke-static {v15, v2, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 218
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_0_3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 219
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_4_7:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 220
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 221
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RINGER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RINGER_MODE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 222
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->INTERRUPTION_FILTER:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 223
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->INTERRUPTION_FILTER_VALUES:Ljava/util/List;

    const/4 v6, 0x1

    .line 224
    invoke-static {v15, v2, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 225
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->NOTIFICATION_POLICY:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v15, v2, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 226
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_UI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 227
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-direct {v3}, Lcom/motorola/camera/settings/CaptureIntent;-><init>()V

    invoke-static {v15, v2, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 228
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACING_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 229
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v15, v2, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 230
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v15, v2, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 231
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v15, v2, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 232
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {v15, v2, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 233
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_BRACKET:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 234
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCREEN_BRIGHTNESS_BUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 235
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 236
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x3

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 238
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW_VALUES:Ljava/util/List;

    .line 239
    new-instance v7, Lcom/motorola/camera/settings/Setting;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v4, v3, v8}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v6, :cond_2

    .line 240
    invoke-virtual {v7, v6}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 241
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 242
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v11, v42

    .line 243
    iput-object v11, v7, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 244
    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mReprocEnabled:Z

    .line 246
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v15, v3, v2, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 247
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_MFNR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v10, v35

    invoke-static {v15, v2, v3, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 248
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_QC_MFNR_SINGLE_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 249
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QC_MFNR_BURST_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 250
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfEnabled:Z

    .line 251
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v15, v3, v2, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 252
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 254
    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 255
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 257
    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 258
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 260
    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 261
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK3:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v5, 0x200

    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 263
    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 264
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 266
    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 267
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "0"

    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 268
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 269
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DISABLE_ZSL_STREAMING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 270
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_OVERRIDE_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 271
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_SR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 272
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 273
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 274
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAppFeatures()Lcom/motorola/camera/AppFeatures;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->MCF_SN_TRIGGER:Lcom/motorola/camera/AppFeatures$Feature;

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 276
    invoke-virtual {v2, v4, v5}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 277
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_TRIGGER:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    .line 279
    invoke-static {v15, v3, v2, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 280
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_STORE_ALL_JPEGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 281
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ACTIVITY_TIMEOUT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 282
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RENDER_PREVIEW_CONTINUOUSLY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 283
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MS_AVG_CAPTURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x14d

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    .line 285
    invoke-static {v15, v2, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 286
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 287
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 288
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_FEATURE_LIMITED_SHOW_TOAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 289
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 290
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 291
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->OIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 292
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 293
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_TO_XMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 294
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x5f

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 296
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 297
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 298
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 299
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    .line 300
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const v6, 0x7f11043e

    .line 301
    new-instance v7, Lcom/motorola/camera/settings/Setting;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v3, v5, v8}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 302
    iput v6, v7, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 303
    iput-object v12, v7, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 304
    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v9, v43

    invoke-static {v15, v2, v9, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 306
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 307
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->shouldFaceBeautyDefaultAuto()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    .line 308
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VALUES:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_40

    new-array v8, v2, [I

    fill-array-data v8, :array_41

    const v17, 0x7f110313

    const v18, 0x7f11042c

    const/4 v5, 0x5

    move-object v2, v15

    move-object/from16 v44, v9

    move/from16 v9, v17

    move-object/from16 v35, v10

    move/from16 v10, v18

    move-object/from16 v45, v11

    move-object/from16 v11, v30

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 309
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    .line 310
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 311
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_VALUES:Ljava/util/List;

    .line 312
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct {v6, v4, v3, v7, v8}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_4

    .line 313
    invoke-virtual {v6, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 314
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 315
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v11, v30

    .line 316
    iput-object v11, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 317
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 319
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 320
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-static {v15, v2, v9, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 321
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 322
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 323
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 324
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v4, [I

    fill-array-data v7, :array_42

    const/4 v10, 0x2

    move-object v2, v15

    move-object v4, v0

    move v5, v10

    move-object v6, v14

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 325
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->COLOR_SEGMENTATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_43

    move-object v2, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 326
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 327
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_ALGO_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 328
    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 329
    new-instance v5, Lcom/motorola/camera/settings/Setting;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v0, v6, v6}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 330
    iput-object v12, v5, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 331
    invoke-virtual {v15, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_LAST_TIME_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 333
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 334
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 335
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v15, v2, v9, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 336
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 337
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 338
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 339
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 340
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_LOW_LIGHT_SELFIE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 341
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_IMAGE_STABILIZATION_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 342
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 343
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 345
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_VALUES:Ljava/util/List;

    const v7, 0x7f110443

    .line 346
    new-instance v8, Lcom/motorola/camera/settings/Setting;

    const/4 v9, 0x3

    invoke-direct {v8, v5, v4, v9, v3}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v6, :cond_5

    .line 347
    invoke-virtual {v8, v6}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 348
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 349
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 350
    :cond_5
    iput v7, v8, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 351
    iput-object v11, v8, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 352
    invoke-virtual {v15, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x8fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 354
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 356
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ISO_ALLOW_VALUES:Ljava/util/List;

    const/16 v7, 0x9

    new-array v7, v7, [I

    .line 357
    fill-array-data v7, :array_44

    .line 358
    new-instance v8, Lcom/motorola/camera/settings/Setting;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v3, v4, v9}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v6, :cond_6

    .line 359
    invoke-virtual {v8, v6}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 360
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 361
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 362
    aget v5, v7, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 363
    iget-object v9, v8, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    const v3, 0x7f110440

    .line 364
    iput v3, v8, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 365
    iput-object v11, v8, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 366
    invoke-virtual {v15, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 368
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 369
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME_VALUES:Ljava/util/List;

    const/16 v6, 0x22

    new-array v6, v6, [I

    .line 370
    fill-array-data v6, :array_45

    .line 371
    new-instance v7, Lcom/motorola/camera/settings/Setting;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v4, v3, v8, v9}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_7

    .line 372
    invoke-virtual {v7, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 373
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 374
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 375
    aget v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 376
    iget-object v9, v7, Lcom/motorola/camera/settings/Setting;->mValueToResMap:Ljava/util/Map;

    invoke-interface {v9, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_7
    const v3, 0x7f110442

    .line 377
    iput v3, v7, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 378
    iput-object v11, v7, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 379
    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 381
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    .line 382
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 383
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HISTOGRAM_STYLE_RGB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 384
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_UI_CONTROL_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UI_MODE_VALUES:Ljava/util/List;

    const-string v4, "mode2"

    const/4 v5, 0x1

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 385
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE_VALUES:Ljava/util/List;

    const-string v4, "Auto"

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 386
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SENSOR_MODE_VALUES:Ljava/util/List;

    const-string v4, "GyroScope"

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 387
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 388
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PROJECTION_MODE_VALUES:Ljava/util/List;

    const-string v4, "Equirectangular"

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 389
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_DETECTION_MODE_VALUES:Ljava/util/List;

    const-string v4, "HighQuality"

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 390
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 391
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE_VALUES:Ljava/util/List;

    const-string v4, "REPEATING_REQUEST"

    invoke-static {v15, v2, v4, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 392
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 393
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 394
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SAVE_OUTPUT_BY_ENGINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 395
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v5, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 396
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->GOAL_ANGLE_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 397
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x3f88f5c3    # 1.07f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_GAIN_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 398
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 399
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 400
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 401
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v13, v31

    .line 403
    invoke-static {v15, v2, v4, v5, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 404
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_EX_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 405
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_SUPPORT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 406
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 407
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 408
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SAVE_DEPTH_MAP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 409
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SUPPORT_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 410
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 411
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 412
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 413
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING_VALUES:Ljava/util/List;

    const/4 v7, 0x3

    invoke-static {v15, v2, v5, v7, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 414
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    .line 415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 416
    invoke-static {v15, v2, v6, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 417
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSIONS:Ljava/util/List;

    invoke-static {v15, v2, v3, v4, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 418
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 419
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_46

    new-array v8, v2, [I

    fill-array-data v8, :array_47

    const v9, 0x7f11030c

    const v10, 0x7f110438

    const/4 v5, 0x4

    move-object v2, v15

    move-object/from16 v6, v35

    move-object/from16 v17, v11

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 420
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v4, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS_VALUES:Ljava/util/List;

    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_48

    const/4 v5, 0x2

    move-object v2, v15

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 421
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 422
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 423
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MLRN_GROUND_TRUTHS_VALUES:Ljava/util/List;

    .line 424
    new-instance v6, Lcom/motorola/camera/settings/Setting;

    move-object/from16 v11, v44

    const/4 v7, 0x1

    invoke-direct {v6, v4, v11, v3, v7}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-eqz v5, :cond_8

    .line 425
    invoke-virtual {v6, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 426
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 427
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    move-object/from16 v3, v45

    .line 428
    iput-object v3, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 429
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 431
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SSDMOBILENET:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 432
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_HANDSSSD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 433
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 434
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 435
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 436
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 437
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 438
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 439
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 440
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_CONTOUR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 441
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_GLASSES_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 442
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 443
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v35

    invoke-static {v15, v2, v5, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 444
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 445
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 446
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 447
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMATS:Ljava/util/List;

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_49

    new-array v8, v2, [I

    fill-array-data v8, :array_4a

    const v9, 0x7f110318

    const/4 v10, -0x1

    const/4 v5, 0x2

    move-object v2, v15

    move-object/from16 v31, v13

    move-object v13, v11

    move-object/from16 v11, v17

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 448
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DNG_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 449
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_SHOW_REAR_CAMERA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 450
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_CLI_DISPLAY_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 451
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 452
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_AUTO_CAPTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 453
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 454
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 455
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FOOD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 456
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 457
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 458
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 459
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 460
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_HOLIDAY_LIGHTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 461
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_SUNSET_SUNRISE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 462
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MOON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 463
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FIREWORKS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 464
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 465
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TEXT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 466
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_BLUESKY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 467
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FLOWER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 468
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_GREENERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 469
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 470
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 471
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 472
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 473
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_GROUPSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 474
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 475
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_VALUES:Ljava/util/List;

    const-string v5, "AUTO"

    const/4 v6, 0x1

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 476
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 477
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 478
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 479
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_VALUES:Ljava/util/List;

    invoke-static {v15, v2, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 480
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v7, v3, [I

    fill-array-data v7, :array_4b

    const/4 v9, 0x2

    move-object v2, v15

    move-object v3, v4

    move-object v4, v1

    move v5, v9

    move-object v6, v14

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 481
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_REDUCTION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_4c

    move-object v2, v15

    move-object v4, v0

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 482
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_4d

    move-object v2, v15

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 483
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 484
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_COUNTRY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 485
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_SKU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 486
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 487
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "7"

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 488
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUMP_CAPTURE_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 489
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUMP_FACE_DETECT_INFO_PER_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 490
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v31

    invoke-static {v15, v2, v5, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 491
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SEQ_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 492
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    const/4 v6, 0x1

    invoke-static {v15, v2, v5, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 493
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 494
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMATS:Ljava/util/List;

    .line 495
    invoke-static {v15, v2, v5, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 496
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 497
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 498
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 499
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 500
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x3

    invoke-static {v15, v2, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 501
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_FORCE_SHOW_HDR_ON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 502
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_SINGLE_SESSION_REMOSAIC_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 503
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 504
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW_MAX_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 505
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CACHE_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 506
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 507
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_DEF_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 508
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CACHE_SHORTCUT_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 509
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG_CACHE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 510
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_IGNORE_SHOT_CONDITIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 511
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_FOUR_STREAMS_QCFA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 512
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LIMIT_SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 513
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 514
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->IGNORE_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 515
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BG_SERVICE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 516
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v15, v2, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 517
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 518
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_HDR_PLUS_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 519
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 520
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 521
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 522
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 524
    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 525
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 526
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 527
    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 528
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 529
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 530
    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 531
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 532
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 533
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 534
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 535
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 536
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 537
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 538
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 539
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 540
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 541
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 542
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 543
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 544
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 545
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 546
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 547
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 548
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 549
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 550
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 551
    invoke-static {v15, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 552
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 553
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 554
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCAN_SLIDE_ROW_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 555
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 556
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MIGRATE_CAMERA_ID_TO_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 557
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIMEOUT_3A_FRAMES:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 558
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v2, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 559
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 560
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 561
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v15, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 562
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 563
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 564
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 565
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 566
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MTK_QUICK_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v2, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 567
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v1, v13, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 568
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "Original"

    invoke-static {v15, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 569
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15, v1, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 570
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "getSettingsMap dur:"

    .line 571
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v15

    nop

    :array_0
    .array-data 4
        0x7f110315
        0x7f110317
        0x7f110338
        0x7f110316
    .end array-data

    :array_1
    .array-data 4
        0x7f11048c
        0x7f11048f
        0x7f110490
        0x7f11048b
    .end array-data

    :array_2
    .array-data 4
        0x7f08018d
        0x7f08018f
        0x7f080192
        0x7f08018e
    .end array-data

    :array_3
    .array-data 4
        0x7f110315
        0x7f110338
        0x7f110337
    .end array-data

    :array_4
    .array-data 4
        0x7f11048c
        0x7f11048f
        0x7f11048b
    .end array-data

    :array_5
    .array-data 4
        0x7f080190
        0x7f080192
        0x7f080191
    .end array-data

    :array_6
    .array-data 4
        0x7f110346
        0x7f11034b
        0x7f11034a
        0x7f110349
        0x7f110348
    .end array-data

    :array_7
    .array-data 4
        0x7f11048e
        0x7f11034b
        0x7f11034a
        0x7f110491
        0x7f11048d
    .end array-data

    :array_8
    .array-data 4
        0x7f08014a
        0x7f08014c
        0x7f08014c
        0x7f08014c
        0x7f08014b
    .end array-data

    :array_9
    .array-data 4
        0x7f110346
        0x7f11034b
        0x7f11034a
        0x7f110349
        0x7f110348
    .end array-data

    :array_a
    .array-data 4
        0x7f11048e
        0x7f110491
        0x7f110491
        0x7f110491
        0x7f11048d
    .end array-data

    :array_b
    .array-data 4
        0x7f08014a
        0x7f08014c
        0x7f08014c
        0x7f08014c
        0x7f08014b
    .end array-data

    :array_c
    .array-data 4
        0x7f110346
        0x7f11034b
        0x7f11034a
        0x7f110349
        0x7f110348
    .end array-data

    :array_d
    .array-data 4
        0x7f11048e
        0x7f110491
        0x7f110491
        0x7f110491
        0x7f11048d
    .end array-data

    :array_e
    .array-data 4
        0x7f08014a
        0x7f08014c
        0x7f08014c
        0x7f08014c
        0x7f08014b
    .end array-data

    :array_f
    .array-data 4
        0x7f110349
        0x7f110348
    .end array-data

    :array_10
    .array-data 4
        0x7f110491
        0x7f11048d
    .end array-data

    :array_11
    .array-data 4
        0x7f08014c
        0x7f08014b
    .end array-data

    :array_12
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_13
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_14
    .array-data 4
        0x7f110207
        0x7f110208
        0x7f110209
    .end array-data

    :array_15
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_16
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_17
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_18
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_19
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_1a
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_1b
    .array-data 4
        0x7f110325
        0x7f110324
    .end array-data

    :array_1c
    .array-data 4
        0x7f0801f1
        0x7f0801f0
    .end array-data

    :array_1d
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_1e
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_1f
    .array-data 4
        0x7f110312
        0x7f110311
    .end array-data

    :array_20
    .array-data 4
        0x7f110312
        0x7f110311
    .end array-data

    :array_21
    .array-data 4
        0x7f080161
        0x7f080160
    .end array-data

    :array_22
    .array-data 4
        0x7f110312
        0x7f110311
    .end array-data

    :array_23
    .array-data 4
        0x7f110312
        0x7f110311
    .end array-data

    :array_24
    .array-data 4
        0x7f08019f
        0x7f08019e
    .end array-data

    :array_25
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_26
    .array-data 4
        0x7f1103f9
        0x7f1103f8
    .end array-data

    :array_27
    .array-data 4
        0x7f08020f
        0x7f08020f
    .end array-data

    :array_28
    .array-data 4
        0x7f110345
        0x7f110344
    .end array-data

    :array_29
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_2a
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_2b
    .array-data 4
        0x7f110334
        0x7f110333
        0x7f110335
    .end array-data

    :array_2c
    .array-data 4
        0x7f080214
        0x7f080213
        0x7f080216
    .end array-data

    :array_2d
    .array-data 4
        0x7f11035f
        0x7f110369
        0x7f110360
        0x7f11036b
        0x7f110363
        0x7f110365
        0x7f110362
        0x7f110361
        0x7f11035a
        0x7f11033d
        0x7f11035d
        0x7f11035d
        0x7f11035b
        0x7f110368
        0x7f110361
        0x7f110351
        0x7f11036c
        0x7f110350
        0x7f11035e
        0x7f110354
        0x7f110359
        0x7f11035e
        0x7f110358
        0x7f110357
        0x7f11036a
        0x7f110359
        0x7f110367
        0x7f110356
        0x7f110364
        0x7f110355
        0x7f110369
    .end array-data

    :array_2e
    .array-data 4
        0x7f0801c5
        0x7f0801d2
        0x7f0801c4
        0x7f0801c0
        0x7f0801d0
        0x7f0801cf
        0x7f0801c9
        0x7f0801c7
        0x7f0801bc
        0x7f0801c3
        0x7f0801ba
        0x7f0801ba
        0x7f0801d3
        0x7f0801d1
        0x7f0801c7
        0x7f0801bb
        0x7f0801d3
        0x7f08007d
        0x7f0801c3
        0x7f0801bd
        0x7f0801cd
        0x7f0801c3
        -0x1
        0x7f0801c7
        0x7f0801c8
        0x7f0801cd
        0x7f0802c7
        0x7f0801bf
        0x7f0801ce
        0x7f0801be
        0x7f0801d2
    .end array-data

    :array_2f
    .array-data 4
        0x7f11023c
        0x7f11023b
    .end array-data

    :array_30
    .array-data 4
        0x7f1102d9
        0x7f1102da
        0x7f1102dc
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102d9
        0x7f1102da
    .end array-data

    :array_31
    .array-data 4
        0x7f0801e4
        0x7f0801e6
        0x7f0801e3
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e5
        0x7f0801e6
    .end array-data

    :array_32
    .array-data 4
        0x7f11031e
        0x7f110320
        0x7f110322
        0x7f11031d
        0x7f11031f
        0x7f110321
        0x7f110323
    .end array-data

    :array_33
    .array-data 4
        0x7f080197
        0x7f080199
        0x7f08019b
        0x7f080196
        0x7f080198
        0x7f08019a
        0x7f08019c
    .end array-data

    :array_34
    .array-data 4
        0x7f1102d9
        0x7f1102da
        0x7f1102dc
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102d9
        0x7f1102da
    .end array-data

    :array_35
    .array-data 4
        0x7f0801e4
        0x7f0801e6
        0x7f0801e3
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e5
        0x7f0801e6
    .end array-data

    :array_36
    .array-data 4
        0x7f11031e
        0x7f110320
        0x7f110322
        0x7f11031d
        0x7f11031f
        0x7f110321
        0x7f110323
    .end array-data

    :array_37
    .array-data 4
        0x7f080197
        0x7f080199
        0x7f08019b
        0x7f080196
        0x7f080198
        0x7f08019a
        0x7f08019c
    .end array-data

    :array_38
    .array-data 4
        0x7f110331
        0x7f110330
    .end array-data

    :array_39
    .array-data 4
        0x7f08020d
        0x7f08020c
    .end array-data

    :array_3a
    .array-data 4
        0x7f11034c
        0x7f11033e
        0x7f11034f
        0x7f11034e
    .end array-data

    :array_3b
    .array-data 4
        0x7f0801b9
        0x7f0801b7
        0x7f0801b9
        0x7f0801b8
    .end array-data

    :array_3c
    .array-data 4
        0x7f110331
        0x7f110330
    .end array-data

    :array_3d
    .array-data 4
        0x7f08020d
        0x7f08020c
    .end array-data

    :array_3e
    .array-data 4
        0x7f1102d9
        0x7f1102da
        0x7f1102dc
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102db
        0x7f1102d9
        0x7f1102da
    .end array-data

    :array_3f
    .array-data 4
        0x7f0801e4
        0x7f0801e6
        0x7f0801e3
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e7
        0x7f0801e5
        0x7f0801e6
    .end array-data

    :array_40
    .array-data 4
        0x7f11033f
        0x7f110340
        0x7f110341
    .end array-data

    :array_41
    .array-data 4
        0x7f080082
        0x7f080084
        0x7f080083
    .end array-data

    :array_42
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_43
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_44
    .array-data 4
        0x7f1102e9
        0x7f110309
        0x7f11030a
        0x7f110304
        0x7f110306
        0x7f110308
        0x7f11030b
        0x7f110305
        0x7f110307
    .end array-data

    :array_45
    .array-data 4
        0x7f1102e9
        0x7f1103e0
        0x7f1103da
        0x7f1103d7
        0x7f1103d3
        0x7f1103ce
        0x7f1103cb
        0x7f1103e1
        0x7f1103dd
        0x7f1103d8
        0x7f1103d4
        0x7f1103cf
        0x7f1103cc
        0x7f1103e3
        0x7f1103df
        0x7f1103db
        0x7f1103d6
        0x7f1103d2
        0x7f1103cd
        0x7f1103ca
        0x7f1103e2
        0x7f1103de
        0x7f1103d9
        0x7f1103d5
        0x7f1103d1
        0x7f1103c9
        0x7f1103e4
        0x7f1103e6
        0x7f1103e7
        0x7f1103e8
        0x7f1103e9
        0x7f1103c7
        0x7f1103c8
        0x7f1103e5
    .end array-data

    :array_46
    .array-data 4
        0x7f11030d
        0x7f11030f
        0x7f11030e
    .end array-data

    :array_47
    .array-data 4
        0x7f08014e
        0x7f080150
        0x7f08014f
    .end array-data

    :array_48
    .array-data 4
        0x7f11026e
        0x7f11026f
        0x7f110270
        0x7f110271
        0x7f110272
        0x7f110273
        0x7f11026d
    .end array-data

    :array_49
    .array-data 4
        0x7f110319
        0x7f11031b
        0x7f11031a
    .end array-data

    :array_4a
    .array-data 4
        0x7f080193
        0x7f080194
        0x7f080195
    .end array-data

    :array_4b
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_4c
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data

    :array_4d
    .array-data 4
        0x7f110371
        0x7f110342
    .end array-data
.end method
