.class final enum Lcom/igexin/a/a/c/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/a/a/c/o;

.field public static final enum b:Lcom/igexin/a/a/c/o;

.field public static final enum c:Lcom/igexin/a/a/c/o;

.field public static final enum d:Lcom/igexin/a/a/c/o;

.field public static final enum e:Lcom/igexin/a/a/c/o;

.field public static final enum f:Lcom/igexin/a/a/c/o;

.field private static final synthetic g:[Lcom/igexin/a/a/c/o;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/igexin/a/a/c/o;

    const-string v1, "Doctype"

    invoke-direct {v0, v1, v3}, Lcom/igexin/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/a/c/o;->a:Lcom/igexin/a/a/c/o;

    new-instance v0, Lcom/igexin/a/a/c/o;

    const-string v1, "StartTag"

    invoke-direct {v0, v1, v4}, Lcom/igexin/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/a/c/o;->b:Lcom/igexin/a/a/c/o;

    new-instance v0, Lcom/igexin/a/a/c/o;

    const-string v1, "EndTag"

    invoke-direct {v0, v1, v5}, Lcom/igexin/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/a/c/o;->c:Lcom/igexin/a/a/c/o;

    new-instance v0, Lcom/igexin/a/a/c/o;

    const-string v1, "Comment"

    invoke-direct {v0, v1, v6}, Lcom/igexin/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/a/c/o;->d:Lcom/igexin/a/a/c/o;

    new-instance v0, Lcom/igexin/a/a/c/o;

    const-string v1, "Character"

    invoke-direct {v0, v1, v7}, Lcom/igexin/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/a/c/o;->e:Lcom/igexin/a/a/c/o;

    new-instance v0, Lcom/igexin/a/a/c/o;

    const-string v1, "EOF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/a/c/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/a/c/o;->f:Lcom/igexin/a/a/c/o;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/igexin/a/a/c/o;

    sget-object v1, Lcom/igexin/a/a/c/o;->a:Lcom/igexin/a/a/c/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/a/a/c/o;->b:Lcom/igexin/a/a/c/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igexin/a/a/c/o;->c:Lcom/igexin/a/a/c/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/igexin/a/a/c/o;->d:Lcom/igexin/a/a/c/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/igexin/a/a/c/o;->e:Lcom/igexin/a/a/c/o;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/igexin/a/a/c/o;->f:Lcom/igexin/a/a/c/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/igexin/a/a/c/o;->g:[Lcom/igexin/a/a/c/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/a/a/c/o;
    .locals 1

    sget-object v0, Lcom/igexin/a/a/c/o;->g:[Lcom/igexin/a/a/c/o;

    invoke-virtual {v0}, [Lcom/igexin/a/a/c/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/a/a/c/o;

    return-object v0
.end method
