.class public final synthetic Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 2

    sget-object p0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "pathname.name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "TEMP_"

    invoke-static {p0, v1, v0, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
