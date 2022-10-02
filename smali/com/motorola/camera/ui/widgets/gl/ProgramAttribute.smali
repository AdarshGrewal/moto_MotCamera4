.class public Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
.super Ljava/lang/Object;
.source "ProgramAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
    }
.end annotation


# instance fields
.field public mComponents:I

.field public mIndex:I

.field public mLength:I

.field public mName:Ljava/lang/String;

.field public mOffset:I

.field public mShouldNormalize:Z

.field public mStride:I

.field public mType:I

.field public mValues:Ljava/nio/FloatBuffer;

.field public mVbo:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 7

    const/16 v2, 0x1406

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    return-void
.end method

.method public set(IIZIII)V
    .locals 0

    .line 11
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    .line 12
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    .line 13
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    .line 14
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    .line 15
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    .line 16
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    if-eqz p6, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "vbo can\'t be 0!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(IIZI[F)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    .line 2
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    .line 6
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    array-length p3, p5

    if-eq p2, p3, :cond_0

    .line 7
    array-length p2, p5

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    .line 9
    array-length p2, p5

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/lang/String;

    return-object p0
.end method
