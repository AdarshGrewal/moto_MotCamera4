.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsManagerBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsManagerBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsManagerBridge.kt\ncom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.controls_2020.settings.controller.SettingsManagerBridge$onSharedPreferenceChanged$1"
    f = "SettingsManagerBridge.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final synthetic $result:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Deferred;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Deferred<",
            "+",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$result:Lkotlinx/coroutines/Deferred;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$result:Lkotlinx/coroutines/Deferred;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;-><init>(Lkotlinx/coroutines/Deferred;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$result:Lkotlinx/coroutines/Deferred;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;-><init>(Lkotlinx/coroutines/Deferred;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$result:Lkotlinx/coroutines/Deferred;

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/motorola/camera/settings/Setting;

    if-nez p1, :cond_3

    goto/16 :goto_e

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->$r8$clinit:I

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 7
    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->shouldSkipUpdatePreference:Z

    if-nez v3, :cond_1d

    if-nez v1, :cond_4

    goto/16 :goto_e

    .line 8
    :cond_4
    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    instance-of v3, v3, Landroid/util/Size;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    .line 10
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$Companion;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v3

    array-length v6, v3

    move v7, v4

    :cond_5
    if-ge v7, v6, :cond_6

    aget-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 12
    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 13
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_6
    move-object v8, v5

    :goto_1
    if-nez v8, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    .line 15
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 16
    iget v7, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    .line 17
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    if-nez v3, :cond_8

    move-object v6, v5

    goto :goto_2

    .line 19
    :cond_8
    iget-object v6, v3, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 20
    :goto_2
    iget-object v7, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_e

    .line 22
    :cond_9
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    new-instance v7, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3, v1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;Lcom/motorola/camera/settings/Setting;)V

    .line 24
    iget-object v3, v6, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_a
    :goto_3
    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 26
    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_17

    .line 27
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v3

    array-length v6, v3

    move v7, v4

    :cond_b
    if-ge v7, v6, :cond_c

    aget-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 29
    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 30
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_c
    move-object v8, v5

    :goto_4
    if-nez v8, :cond_d

    goto :goto_6

    .line 31
    :cond_d
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 33
    iget v7, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    .line 34
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    if-nez v3, :cond_e

    move-object v6, v5

    goto :goto_5

    .line 36
    :cond_e
    iget-object v6, v3, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 37
    :goto_5
    iget-object v7, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 38
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto/16 :goto_e

    .line 39
    :cond_f
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    new-instance v7, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;Lcom/motorola/camera/settings/Setting;)V

    .line 41
    iget-object v3, v6, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :goto_6
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$Companion;

    .line 43
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    move-result-object v3

    array-length v6, v3

    move v7, v4

    :cond_10
    if-ge v7, v6, :cond_12

    aget-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 44
    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->getSetting:Lkotlin/jvm/functions/Function0;

    if-nez v9, :cond_11

    move-object v9, v5

    goto :goto_7

    .line 45
    :cond_11
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 46
    :goto_7
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_8

    :cond_12
    move-object v8, v5

    :goto_8
    if-nez v8, :cond_13

    goto :goto_b

    .line 47
    :cond_13
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    .line 48
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 49
    iget v7, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->key:I

    .line 50
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v3, :cond_14

    goto :goto_9

    .line 52
    :cond_14
    iget-boolean v6, v3, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 53
    iget-object v7, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_15

    goto :goto_a

    :cond_15
    :goto_9
    move v2, v4

    :goto_a
    if-eqz v2, :cond_16

    goto :goto_e

    .line 55
    :cond_16
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 56
    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v6, v3, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Landroidx/preference/SwitchPreferenceCompat;Lcom/motorola/camera/settings/Setting;)V

    .line 57
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_17
    :goto_b
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 59
    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1d

    .line 60
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel$Companion;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v2

    array-length v3, v2

    :cond_18
    if-ge v4, v3, :cond_19

    aget-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 62
    iget-object v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 63
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_c

    :cond_19
    move-object v6, v5

    :goto_c
    if-nez v6, :cond_1a

    goto :goto_e

    .line 64
    :cond_1a
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    iget v2, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-nez p1, :cond_1b

    goto :goto_d

    .line 69
    :cond_1b
    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 71
    :goto_d
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 72
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_e

    .line 73
    :cond_1c
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 74
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/SwitchPreferenceCompat;Lcom/motorola/camera/settings/Setting;)V

    .line 75
    iget-object p1, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_1d
    :goto_e
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    .line 77
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/List;

    .line 78
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$1;->$result:Lkotlinx/coroutines/Deferred;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
