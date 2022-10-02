.class public final enum Lcom/motorola/camera/background/common/IOCompression;
.super Ljava/lang/Enum;
.source "IOCompression.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/IOCompression$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/IOCompression;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0087\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u0011\u0008\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016R\u0019\u0010\u000c\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/IOCompression;",
        "",
        "Landroid/os/Parcelable;",
        "",
        "toString",
        "Landroid/os/Parcel;",
        "parcel",
        "",
        "flags",
        "",
        "writeToParcel",
        "describeContents",
        "compression",
        "I",
        "getCompression",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "CREATOR",
        "UNDEFINED",
        "NONE",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/background/common/IOCompression;

.field public static final CREATOR:Lcom/motorola/camera/background/common/IOCompression$CREATOR;

.field public static final enum NONE:Lcom/motorola/camera/background/common/IOCompression;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNDEFINED:Lcom/motorola/camera/background/common/IOCompression;


# instance fields
.field private final compression:I


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/background/common/IOCompression;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/background/common/IOCompression;

    sget-object v1, Lcom/motorola/camera/background/common/IOCompression;->UNDEFINED:Lcom/motorola/camera/background/common/IOCompression;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/IOCompression;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/background/common/IOCompression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/IOCompression;->UNDEFINED:Lcom/motorola/camera/background/common/IOCompression;

    .line 2
    new-instance v0, Lcom/motorola/camera/background/common/IOCompression;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/background/common/IOCompression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    invoke-static {}, Lcom/motorola/camera/background/common/IOCompression;->$values()[Lcom/motorola/camera/background/common/IOCompression;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/IOCompression;->$VALUES:[Lcom/motorola/camera/background/common/IOCompression;

    new-instance v0, Lcom/motorola/camera/background/common/IOCompression$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/common/IOCompression$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/background/common/IOCompression;->CREATOR:Lcom/motorola/camera/background/common/IOCompression$CREATOR;

    .line 3
    const-class v0, Lcom/motorola/camera/background/common/IOCompression;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/IOCompression;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/background/common/IOCompression;->compression:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/IOCompression;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/IOCompression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/IOCompression;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/IOCompression;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/IOCompression;->$VALUES:[Lcom/motorola/camera/background/common/IOCompression;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/IOCompression;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCompression()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/background/common/IOCompression;->compression:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "error"

    return-object p0

    :cond_0
    const-string p0, "none"

    return-object p0

    :cond_1
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
