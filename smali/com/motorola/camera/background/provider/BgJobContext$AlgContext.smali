.class public final Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;
.super Ljava/lang/Object;
.source "BgJobContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/provider/BgJobContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlgContext"
.end annotation


# instance fields
.field public app6Fid:J

.field public auxliaryDataFid:J

.field public exifFid:J

.field public jpegFids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;",
            ">;"
        }
    .end annotation
.end field

.field public makerNoteFid:J

.field public thumbFid:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "jpegFids"

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    .line 10
    iput-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    .line 11
    iput-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    .line 12
    iput-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    .line 13
    iput-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    .line 14
    iput-object v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(JJJJJLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJ",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    .line 2
    iput-wide p3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    .line 3
    iput-wide p5, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    .line 4
    iput-wide p7, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    .line 5
    iput-wide p9, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    .line 6
    iput-object p11, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AlgContext(thumbFid="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", exifFid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", makerNoteFid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", app6Fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", auxliaryDataFid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jpegFids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
