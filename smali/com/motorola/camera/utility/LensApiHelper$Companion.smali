.class public final Lcom/motorola/camera/utility/LensApiHelper$Companion;
.super Ljava/lang/Object;
.source "LensApiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/LensApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static final getInstance()Lcom/motorola/camera/utility/LensApiHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper;->instance$delegate:Lkotlin/Lazy;

    .line 2
    check-cast v0, Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/LensApiHelper;

    return-object v0
.end method
