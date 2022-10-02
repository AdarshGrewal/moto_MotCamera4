.class public Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;
.super Landroid/app/AlertDialog;
.source "SystemUIDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;
    }
.end annotation


# instance fields
.field public dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p2, 0x400

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 5
    :goto_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final registerDismissListenerInner(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    const/4 p0, 0x1

    .line 4
    iput-boolean p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->registered:Z

    :cond_2
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void
.end method
