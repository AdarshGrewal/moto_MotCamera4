.class public Lcom/motorola/camera/DebugControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugControlReceiver.java"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/DebugControlReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getCaptureResultKeysExtra(Landroid/content/Intent;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "motorola.camera.intent.extra.CAPTURE_RESULT_KEYS"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->getListFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static setCaptureResultKeys(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 3
    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_b

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "motorola.camera.intent.action.REMOVE_CAPTURE_RESULT_PLOT_KEYS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "motorola.camera.intent.action.SET_LIMITER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "motorola.camera.intent.action.ADD_CAPTURE_RESULT_PLOT_KEYS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "motorola.camera.intent.action.SHOW_CAPTURE_RESULT_PLOTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "motorola.camera.intent.action.HIDE_CAPTURE_RESULT_PLOTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "motorola.camera.intent.action.SET_CAPTURE_RESULT_PLOT_KEYS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move p1, v1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    new-instance p0, Ljava/util/HashSet;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast p1, [Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {p2}, Lcom/motorola/camera/DebugControlReceiver;->getCaptureResultKeysExtra(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/DebugControlReceiver;->setCaptureResultKeys(Ljava/util/Set;)V

    goto/16 :goto_2

    :pswitch_1
    const-string p0, "motorola.camera.intent.extra.NAME"

    .line 10
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string p1, "motorola.camera.intent.extra.ENABLE"

    .line 11
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 12
    invoke-static {p0, v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    .line 13
    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    const-string v0, "BatterySaverHandler"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 15
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 17
    :cond_7
    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    const-string v0, "BatteryHandler"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 18
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 19
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 21
    :pswitch_2
    new-instance p0, Ljava/util/HashSet;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 22
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 24
    check-cast p1, [Ljava/lang/String;

    .line 25
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-static {p2}, Lcom/motorola/camera/DebugControlReceiver;->getCaptureResultKeysExtra(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-static {p0}, Lcom/motorola/camera/DebugControlReceiver;->setCaptureResultKeys(Ljava/util/Set;)V

    goto :goto_2

    .line 28
    :pswitch_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "motorola.camera.intent.extra.PLOT_CPU_0_3"

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_0_3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const-string v0, "motorola.camera.intent.extra.PLOT_CPU_4_7"

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_4_7:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-string v0, "motorola.camera.intent.extra.PLOT_PREVIEW_RATE"

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :pswitch_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :pswitch_5
    invoke-static {p2}, Lcom/motorola/camera/DebugControlReceiver;->getCaptureResultKeysExtra(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/DebugControlReceiver;->setCaptureResultKeys(Ljava/util/Set;)V

    :cond_b
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74e5ef8a -> :sswitch_5
        -0x576a17ea -> :sswitch_4
        0x305d3b -> :sswitch_3
        0x45814917 -> :sswitch_2
        0x4ca8e65b -> :sswitch_1
        0x7ccbb014 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
