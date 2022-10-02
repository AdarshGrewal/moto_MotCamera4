.class public final Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;
.super Ljava/lang/Object;
.source "InAppUpdateUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/InAppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateStateData"
.end annotation


# instance fields
.field public final availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public final stateChanged:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    iput p2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    iget-object v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    iget-object v3, p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    iget p1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "UpdateStateData(availability="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
