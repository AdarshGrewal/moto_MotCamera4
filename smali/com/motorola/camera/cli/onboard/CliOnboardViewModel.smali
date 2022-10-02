.class public final Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
.super Lcom/motorola/camera/arch/view/BaseViewModel;
.source "CliOnboardViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;
    }
.end annotation


# instance fields
.field public callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p2, Lcom/motorola/camera/settings/CaptureIntent;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "wiggle_gesture"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/motorola/camera/settings/CaptureIntent;->hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v1, 0x7f0800bf

    const v2, 0x7f1101ae

    invoke-direct {p2, v1, v2, v0}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    const/4 v1, 0x0

    .line 10
    new-instance v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f0800b7

    const v4, 0x7f1102a5

    invoke-direct {v2, v3, v4, v0}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    aput-object v2, p2, v1

    .line 11
    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v2, 0x7f0800bb

    const v3, 0x7f1102a6

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    aput-object v1, p2, v0

    .line 12
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;->showOnboard(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
