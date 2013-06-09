.class public Lcom/gridlayout/t;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/gridlayout/t;


# instance fields
.field final b:Z

.field final c:Lcom/gridlayout/o;

.field final d:Lcom/gridlayout/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/gridlayout/GridLayout;->a()Lcom/gridlayout/t;

    move-result-object v0

    sput-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    return-void
.end method

.method private constructor <init>(ZIILcom/gridlayout/i;)V
    .locals 2

    new-instance v0, Lcom/gridlayout/o;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Lcom/gridlayout/o;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Lcom/gridlayout/t;-><init>(ZLcom/gridlayout/o;Lcom/gridlayout/i;)V

    return-void
.end method

.method synthetic constructor <init>(ZIILcom/gridlayout/i;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gridlayout/t;-><init>(ZIILcom/gridlayout/i;)V

    return-void
.end method

.method private constructor <init>(ZLcom/gridlayout/o;Lcom/gridlayout/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gridlayout/t;->b:Z

    iput-object p2, p0, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iput-object p3, p0, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    iget-object v0, p0, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    sget-object v1, Lcom/gridlayout/GridLayout;->i:Lcom/gridlayout/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method final a(Lcom/gridlayout/o;)Lcom/gridlayout/t;
    .locals 3

    new-instance v0, Lcom/gridlayout/t;

    iget-boolean v1, p0, Lcom/gridlayout/t;->b:Z

    iget-object v2, p0, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    invoke-direct {v0, v1, p1, v2}, Lcom/gridlayout/t;-><init>(ZLcom/gridlayout/o;Lcom/gridlayout/i;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/gridlayout/t;

    iget-object v2, p0, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    iget-object v3, p1, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget-object v3, p1, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    invoke-virtual {v2, v3}, Lcom/gridlayout/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    invoke-virtual {v0}, Lcom/gridlayout/o;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
