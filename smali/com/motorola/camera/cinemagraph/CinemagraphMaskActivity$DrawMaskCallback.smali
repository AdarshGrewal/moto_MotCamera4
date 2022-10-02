.class public Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;
.super Ljava/lang/Object;
.source "CinemagraphMaskActivity.java"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawMaskCallback"
.end annotation


# instance fields
.field public final mEmptyMaskRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;->mEmptyMaskRunnable:Ljava/lang/Runnable;

    return-void
.end method
