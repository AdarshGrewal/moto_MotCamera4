.class public Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "ClipboardAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction<",
        "Landroid/content/ClipData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ClipData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(ILcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    return-void
.end method
