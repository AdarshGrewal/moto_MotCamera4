.class public final Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Mtk;
.super Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;
.source "DeviceSpecificAlignment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mtk"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getAlignment()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
