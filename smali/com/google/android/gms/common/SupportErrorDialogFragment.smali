.class public Lcom/google/android/gms/common/SupportErrorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field public zaa:Landroid/app/Dialog;

.field public zab:Landroid/content/DialogInterface$OnCancelListener;

.field public zac:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zac:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zac:Landroid/app/Dialog;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zac:Landroid/app/Dialog;

    return-object p0

    :cond_1
    return-object p1
.end method
