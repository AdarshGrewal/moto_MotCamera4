.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.super Ljava/lang/Object;
.source "ContentAiProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$IVersioning;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentAiProviderHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentAiProviderHelper.kt\ncom/motorola/camera/shared/ai/model/ContentAiProviderHelper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,588:1\n3785#2:589\n4300#2,2:590\n3785#2:592\n4300#2,2:593\n*S KotlinDebug\n*F\n+ 1 ContentAiProviderHelper.kt\ncom/motorola/camera/shared/ai/model/ContentAiProviderHelper\n*L\n452#1:589\n452#1:590,2\n480#1:592\n480#1:593,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

.field public static appContext:Landroid/content/Context;

.field public static final bgServiceModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;",
            "Lcom/motorola/camera/shared/ai/model/McfMlModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final modelDataMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    invoke-direct {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 3
    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 4
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createGooglePlayStoreIntent()Landroid/content/Intent;
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "java.lang.String.format(format, *args)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getInstance().contentAiPackageName"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 3
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "leapp://ptn/appinfo.do?packagename=%s&versioncode=-1"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.lenovo.leos.appstore"

    .line 5
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 7
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "https://play.google.com/store/apps/details?id=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.vending"

    .line 9
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v2
.end method

.method public static final declared-synchronized getBgServiceMlModels()Landroid/os/Bundle;
    .locals 6

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 3
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    .line 4
    iget-object v5, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 5
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    .line 7
    iget-object v5, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 8
    check-cast v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    :goto_1
    if-nez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 11
    :cond_2
    iget-object v5, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    :goto_2
    if-eqz v5, :cond_0

    .line 12
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 13
    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v4, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 15
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catch_0
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;",
            ")",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;",
            "Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "modelFeature"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_3

    aget-object v7, v1, v5

    .line 4
    iget-object v8, v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v8, p0, :cond_1

    .line 5
    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-nez v8, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v6, v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    :goto_1
    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_3
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 10
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-nez v3, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    iget-object v3, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-nez v3, :cond_6

    :goto_3
    move-object v2, v6

    goto :goto_4

    .line 12
    :cond_6
    new-instance v4, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 13
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    long-to-int v3, v8

    .line 14
    invoke-direct {v4, v5, v7, v3}, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;-><init>(III)V

    invoke-virtual {p0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    if-nez v2, :cond_4

    .line 16
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 17
    :cond_7
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 8

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "modelFeature"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 4
    iget-object v7, v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v7, p0, :cond_1

    .line 5
    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v7, v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    :goto_1
    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_2
    if-eqz v7, :cond_2

    .line 7
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 10
    :cond_4
    :try_start_1
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 12
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-nez v2, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    iget-object v2, v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    .line 14
    iget-boolean v3, v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isCompatible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_7

    .line 15
    monitor-exit v0

    return-object v2

    .line 16
    :cond_7
    :try_start_2
    iget-boolean v3, v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isUpdatable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    move-object p0, v2

    goto :goto_3

    .line 17
    :cond_8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;
    .locals 9

    .line 1
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->buildUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 3
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "version"

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :catch_0
    :goto_1
    iget-object v1, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-virtual {p1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion()I

    move-result p1

    invoke-interface {v1, p1, v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$IVersioning;->checkState(II)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p1

    .line 9
    iget-boolean v1, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isCompatible:Z

    if-eqz v1, :cond_3

    :try_start_5
    const-string v1, "r"

    .line 10
    invoke-virtual {p0, v7, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 11
    :catch_1
    :cond_3
    new-instance p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;-><init>(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;Landroid/content/res/AssetFileDescriptor;)V

    return-object p0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Context is null. Have you called init?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
