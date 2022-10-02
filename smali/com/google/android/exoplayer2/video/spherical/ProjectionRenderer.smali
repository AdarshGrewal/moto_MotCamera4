.class public final Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
    }
.end annotation


# static fields
.field public static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field public static final TEX_MATRIX_BOTTOM:[F

.field public static final TEX_MATRIX_LEFT:[F

.field public static final TEX_MATRIX_RIGHT:[F

.field public static final TEX_MATRIX_TOP:[F

.field public static final TEX_MATRIX_WHOLE:[F

.field public static final VERTEX_SHADER_CODE:[Ljava/lang/String;


# instance fields
.field public leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field public mvpMatrixHandle:I

.field public positionHandle:I

.field public program:I

.field public rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field public stereoMode:I

.field public texCoordsHandle:I

.field public textureHandle:I

.field public uTexMatrixHandle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string/jumbo v0, "uniform mat4 uMvpMatrix;"

    const-string/jumbo v1, "uniform mat3 uTexMatrix;"

    const-string v2, "attribute vec4 aPosition;"

    const-string v3, "attribute vec2 aTexCoords;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_Position = uMvpMatrix * aPosition;"

    const-string v7, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    const-string/jumbo v8, "}"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require"

    const-string v2, "precision mediump float;"

    const-string/jumbo v3, "uniform samplerExternalOES uTexture;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    const-string/jumbo v7, "}"

    .line 2
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projection"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 4
    aget-object v0, v0, v2

    .line 5
    iget v0, v0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    array-length v0, p0

    if-ne v0, v3, :cond_0

    .line 7
    aget-object p0, p0, v2

    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method
