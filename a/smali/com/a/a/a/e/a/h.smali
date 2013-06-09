.class public final enum Lcom/a/a/a/e/a/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/a/a/e/a/h;

.field public static final enum b:Lcom/a/a/a/e/a/h;

.field public static final enum c:Lcom/a/a/a/e/a/h;

.field private static final synthetic d:[Lcom/a/a/a/e/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/a/e/a/h;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/e/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/e/a/h;->a:Lcom/a/a/a/e/a/h;

    new-instance v0, Lcom/a/a/a/e/a/h;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/a/a/a/e/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/e/a/h;->b:Lcom/a/a/a/e/a/h;

    new-instance v0, Lcom/a/a/a/e/a/h;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/a/a/a/e/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/e/a/h;->c:Lcom/a/a/a/e/a/h;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/a/e/a/h;

    sget-object v1, Lcom/a/a/a/e/a/h;->a:Lcom/a/a/a/e/a/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/a/e/a/h;->b:Lcom/a/a/a/e/a/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/e/a/h;->c:Lcom/a/a/a/e/a/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/a/e/a/h;->d:[Lcom/a/a/a/e/a/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/e/a/h;
    .locals 1

    const-class v0, Lcom/a/a/a/e/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/e/a/h;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/e/a/h;
    .locals 1

    sget-object v0, Lcom/a/a/a/e/a/h;->d:[Lcom/a/a/a/e/a/h;

    invoke-virtual {v0}, [Lcom/a/a/a/e/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/e/a/h;

    return-object v0
.end method
