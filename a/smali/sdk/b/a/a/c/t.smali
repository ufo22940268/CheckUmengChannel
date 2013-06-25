.class final enum Lsdk/b/a/a/c/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lsdk/b/a/a/c/t;

.field public static final enum b:Lsdk/b/a/a/c/t;

.field public static final enum c:Lsdk/b/a/a/c/t;

.field private static final synthetic d:[Lsdk/b/a/a/c/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsdk/b/a/a/c/t;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lsdk/b/a/a/c/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsdk/b/a/a/c/t;->a:Lsdk/b/a/a/c/t;

    new-instance v0, Lsdk/b/a/a/c/t;

    const-string v1, "BACKUP"

    invoke-direct {v0, v1, v3}, Lsdk/b/a/a/c/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsdk/b/a/a/c/t;->b:Lsdk/b/a/a/c/t;

    new-instance v0, Lsdk/b/a/a/c/t;

    const-string v1, "TRY_NORMAL"

    invoke-direct {v0, v1, v4}, Lsdk/b/a/a/c/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsdk/b/a/a/c/t;->c:Lsdk/b/a/a/c/t;

    const/4 v0, 0x3

    new-array v0, v0, [Lsdk/b/a/a/c/t;

    sget-object v1, Lsdk/b/a/a/c/t;->a:Lsdk/b/a/a/c/t;

    aput-object v1, v0, v2

    sget-object v1, Lsdk/b/a/a/c/t;->b:Lsdk/b/a/a/c/t;

    aput-object v1, v0, v3

    sget-object v1, Lsdk/b/a/a/c/t;->c:Lsdk/b/a/a/c/t;

    aput-object v1, v0, v4

    sput-object v0, Lsdk/b/a/a/c/t;->d:[Lsdk/b/a/a/c/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lsdk/b/a/a/c/t;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/t;->d:[Lsdk/b/a/a/c/t;

    invoke-virtual {v0}, [Lsdk/b/a/a/c/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsdk/b/a/a/c/t;

    return-object v0
.end method
