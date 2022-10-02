.class public abstract Lcom/motorola/camera/arch/view/BasePresentation;
.super Landroid/app/Presentation;
.source "BasePresentation.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Lcom/motorola/camera/arch/view/BaseViewModel;",
        ">",
        "Landroid/app/Presentation;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# instance fields
.field public orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    .line 3
    new-instance p0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public abstract layoutRes()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0, p0}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/arch/view/BasePresentation;->layoutRes()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    return-void
.end method
