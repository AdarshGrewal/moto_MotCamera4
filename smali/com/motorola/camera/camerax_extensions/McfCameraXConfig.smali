.class public final Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;
.super Ljava/lang/Object;
.source "McfCameraXConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

.field public static volatile align512:Z = false

.field public static volatile initialize:Z = true

.field public static volatile swapChroma:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    return-void
.end method
