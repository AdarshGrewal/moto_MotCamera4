.class public final Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;
.super Ljava/lang/Object;
.source "FeatureLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/limitfunctionality/FeatureLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;-><init>(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$1;)V

    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    return-void
.end method
