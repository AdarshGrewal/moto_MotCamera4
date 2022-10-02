.class public final Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;
.super Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;
.source "CliAlertDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activityContext:Landroid/content/Context;

.field public alertContentView:Landroid/view/View;

.field public buttonNeutral:Landroid/widget/Button;

.field public flipReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;

.field public handler:Landroid/os/Handler;

.field public final runnableDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public textMessage:Landroid/widget/TextView;

.field public textTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    .line 2
    sget v2, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "display"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 4
    sget v2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "CliAlertDialog"

    const-string v2, "getCliContext failed"

    .line 6
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const v0, 0x7f120123

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$runnableDismiss$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$runnableDismiss$1;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->runnableDismiss:Lkotlin/jvm/functions/Function0;

    .line 9
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_2

    :cond_3
    const-string v2, "layout_inflater"

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    const-string v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d002f

    .line 11
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026_dialog, rootView, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a0061

    const v2, 0x7f0a029d

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a03d5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textTitle:Landroid/widget/TextView;

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a0255

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textMessage:Landroid/widget/TextView;

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a02cf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a028f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a0290

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->buttonNeutral:Landroid/widget/Button;

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const p2, 0x7f0a00c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 20
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const v2, 0x7f0a0284

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/widget/FrameLayout;

    .line 22
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    iget-object v1, p1, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 24
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 26
    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    .line 27
    :cond_6
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->registerDismissListenerInner(Landroid/app/Dialog;)V

    .line 29
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->flipReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;

    .line 30
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    sget-object p2, Lcom/motorola/camera/reflect/CLIManagerFW;->ACTION_LID_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    .line 33
    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-nez p2, :cond_7

    goto :goto_5

    .line 34
    :cond_7
    invoke-virtual {p2, p1, p0, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_5
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->runnableDismiss:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->unregister()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->flipReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;

    if-nez v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->flipReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;

    .line 10
    :goto_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textMessage:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textTitle:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
