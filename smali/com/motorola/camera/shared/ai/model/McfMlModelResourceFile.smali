.class public final Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;
.super Ljava/lang/Object;
.source "McfMlModelResourceFile.kt"


# instance fields
.field public final modelFd:I

.field public final modelOffset:I

.field public final modelSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    iput p2, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    iput p3, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    iget v3, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    iget v3, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    iget p1, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "McfMlModelResourceFile(modelFd="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
