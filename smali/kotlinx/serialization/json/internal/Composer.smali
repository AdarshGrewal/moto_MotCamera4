.class public Lkotlinx/serialization/json/internal/Composer;
.super Ljava/lang/Object;
.source "Composers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composers.kt\nkotlinx/serialization/json/internal/Composer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"
.end annotation


# instance fields
.field public final json:Lkotlinx/serialization/json/Json;

.field public level:I

.field public final sb:Lcom/google/android/play/core/assetpacks/zzdg;

.field public writingFirst:Z


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzdg;Lkotlinx/serialization/json/Json;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lcom/google/android/play/core/assetpacks/zzdg;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method


# virtual methods
.method public final nextItem()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    .line 3
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 4
    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lcom/google/android/play/core/assetpacks/zzdg;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;->append(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lkotlinx/serialization/json/internal/Composer;->level:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    .line 7
    iget-object v2, v2, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 8
    iget-object v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    const-string/jumbo v3, "v"

    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lcom/google/android/play/core/assetpacks/zzdg;

    invoke-virtual {v3, v2}, Lcom/google/android/play/core/assetpacks/zzdg;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final print(C)V
    .locals 3

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lcom/google/android/play/core/assetpacks/zzdg;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/zzdg;->ensureAdditionalCapacity(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final space()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    .line 2
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 3
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    :cond_0
    return-void
.end method
