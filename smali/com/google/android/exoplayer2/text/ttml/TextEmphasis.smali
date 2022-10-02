.class public final Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
.super Ljava/lang/Object;
.source "TextEmphasis.java"


# static fields
.field public static final MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "\\s+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    sget v0, Lcom/google/common/collect/ImmutableSet;->$r8$clinit:I

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "auto"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "none"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 4
    sput-object v1, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;

    const-string v1, "dot"

    const-string v2, "sesame"

    const-string v5, "circle"

    .line 5
    invoke-static {v1, v2, v5}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "filled"

    aput-object v2, v1, v3

    const-string v2, "open"

    aput-object v2, v1, v4

    .line 6
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;

    const-string v0, "after"

    const-string v1, "before"

    const-string v2, "outside"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "markShape",
            "markFill",
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markFill:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    return-void
.end method
