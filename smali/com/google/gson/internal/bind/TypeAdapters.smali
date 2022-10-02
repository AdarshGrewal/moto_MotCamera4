.class public final Lcom/google/gson/internal/bind/TypeAdapters;
.super Ljava/lang/Object;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
    }
.end annotation


# static fields
.field public static final ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final BIG_DECIMAL:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field public static final BIG_INTEGER:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field public static final BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final BOOLEAN_AS_STRING:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final DOUBLE:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final FLOAT:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final JSON_ELEMENT:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final LONG:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>()V

    .line 2
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 3
    const-class v0, Ljava/lang/Class;

    .line 4
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 5
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 6
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$2;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$2;-><init>()V

    .line 7
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 8
    const-class v0, Ljava/util/BitSet;

    .line 9
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 10
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 11
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$3;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$3;-><init>()V

    .line 12
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$4;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$4;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/TypeAdapter;

    .line 13
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    .line 14
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$33;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 15
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 16
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$5;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$5;-><init>()V

    .line 17
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    .line 18
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$33;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 19
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 20
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$6;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$6;-><init>()V

    .line 21
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    .line 22
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$33;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 23
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 24
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$7;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$7;-><init>()V

    .line 25
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    .line 26
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$33;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 27
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 28
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$8;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$8;-><init>()V

    .line 29
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 30
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 32
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 33
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$9;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$9;-><init>()V

    .line 34
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 35
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 37
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 38
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$10;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$10;-><init>()V

    .line 39
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 40
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 41
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 42
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 43
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$11;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$11;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/TypeAdapter;

    .line 44
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$12;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$12;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/gson/TypeAdapter;

    .line 45
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$13;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$13;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/gson/TypeAdapter;

    .line 46
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$14;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$14;-><init>()V

    .line 47
    const-class v1, Ljava/lang/Number;

    .line 48
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 49
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 50
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$15;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$15;-><init>()V

    .line 51
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    .line 52
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$33;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 53
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 54
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$16;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$16;-><init>()V

    .line 55
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$17;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$17;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/TypeAdapter;

    .line 56
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$18;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$18;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/TypeAdapter;

    .line 57
    const-class v1, Ljava/lang/String;

    .line 58
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 59
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 60
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$19;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$19;-><init>()V

    .line 61
    const-class v1, Ljava/lang/StringBuilder;

    .line 62
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 63
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 64
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$20;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$20;-><init>()V

    .line 65
    const-class v1, Ljava/lang/StringBuffer;

    .line 66
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 67
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 68
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$21;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$21;-><init>()V

    .line 69
    const-class v1, Ljava/net/URL;

    .line 70
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 71
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 72
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$22;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$22;-><init>()V

    .line 73
    const-class v1, Ljava/net/URI;

    .line 74
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 75
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 76
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$23;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$23;-><init>()V

    .line 77
    const-class v1, Ljava/net/InetAddress;

    .line 78
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$35;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$35;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 79
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 80
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$24;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$24;-><init>()V

    .line 81
    const-class v1, Ljava/util/UUID;

    .line 82
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 83
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 84
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$25;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$25;-><init>()V

    .line 85
    new-instance v1, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 86
    const-class v0, Ljava/util/Currency;

    .line 87
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 88
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 89
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$26;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$26;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 90
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$27;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$27;-><init>()V

    .line 91
    const-class v1, Ljava/util/Calendar;

    const-class v2, Ljava/util/GregorianCalendar;

    .line 92
    new-instance v3, Lcom/google/gson/internal/bind/TypeAdapters$34;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$34;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 93
    sput-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 94
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$28;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$28;-><init>()V

    .line 95
    const-class v1, Ljava/util/Locale;

    .line 96
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 97
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 98
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$29;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    .line 99
    const-class v1, Lcom/google/gson/JsonElement;

    .line 100
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$35;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$35;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 101
    sput-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 102
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$30;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method
