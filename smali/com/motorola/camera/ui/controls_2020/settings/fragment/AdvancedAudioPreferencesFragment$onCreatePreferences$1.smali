.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdvancedAudioPreferencesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.controls_2020.settings.fragment.AdvancedAudioPreferencesFragment$onCreatePreferences$1"
    f = "AdvancedAudioPreferencesFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1103b2

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "audioZoomEnabled"

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/AdvancedAudioPreferencesFragment;

    .line 12
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1103b3

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez p0, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/CheckBoxPreference;)V

    .line 16
    iput-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 17
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
