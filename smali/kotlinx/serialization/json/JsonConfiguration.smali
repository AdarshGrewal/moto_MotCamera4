.class public final Lkotlinx/serialization/json/JsonConfiguration;
.super Ljava/lang/Object;
.source "JsonConfiguration.kt"


# instance fields
.field public final allowSpecialFloatingPointValues:Z

.field public final allowStructuredMapKeys:Z

.field public final classDiscriminator:Ljava/lang/String;

.field public final coerceInputValues:Z

.field public final encodeDefaults:Z

.field public final ignoreUnknownKeys:Z

.field public final isLenient:Z

.field public final prettyPrint:Z

.field public final prettyPrintIndent:Ljava/lang/String;

.field public final useAlternativeNames:Z

.field public final useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZZI)V
    .locals 2

    and-int/lit8 p6, p12, 0x1

    const/4 p9, 0x0

    if-eqz p6, :cond_0

    move p1, p9

    :cond_0
    and-int/lit8 p6, p12, 0x2

    if-eqz p6, :cond_1

    move p2, p9

    :cond_1
    and-int/lit8 p6, p12, 0x4

    if-eqz p6, :cond_2

    move p3, p9

    :cond_2
    and-int/lit8 p6, p12, 0x8

    if-eqz p6, :cond_3

    move p4, p9

    :cond_3
    and-int/lit8 p6, p12, 0x10

    if-eqz p6, :cond_4

    move p5, p9

    :cond_4
    and-int/lit8 p6, p12, 0x20

    const/4 v0, 0x0

    if-eqz p6, :cond_5

    const-string p6, "    "

    goto :goto_0

    :cond_5
    move-object p6, v0

    :goto_0
    and-int/lit8 v1, p12, 0x40

    if-eqz v1, :cond_6

    move p7, p9

    :cond_6
    and-int/lit16 v1, p12, 0x80

    if-eqz v1, :cond_7

    move p8, p9

    :cond_7
    and-int/lit16 v1, p12, 0x100

    if-eqz v1, :cond_8

    const-string/jumbo v0, "type"

    :cond_8
    and-int/lit16 v1, p12, 0x200

    if-eqz v1, :cond_9

    move p10, p9

    :cond_9
    and-int/lit16 p9, p12, 0x400

    if-eqz p9, :cond_a

    const/4 p11, 0x1

    :cond_a
    const-string p9, "prettyPrintIndent"

    .line 1
    invoke-static {p6, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "classDiscriminator"

    invoke-static {v0, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    .line 4
    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    .line 5
    iput-boolean p3, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 6
    iput-boolean p4, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    .line 7
    iput-boolean p5, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    .line 8
    iput-object p6, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    .line 9
    iput-boolean p7, p0, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    .line 10
    iput-boolean p8, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    .line 11
    iput-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    .line 12
    iput-boolean p10, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    .line 13
    iput-boolean p11, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JsonConfiguration(encodeDefaults="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreUnknownKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowStructuredMapKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrintIndent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', coerceInputValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useArrayPolymorphism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", classDiscriminator=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', allowSpecialFloatingPointValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
