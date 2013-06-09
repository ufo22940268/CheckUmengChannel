.class public final Lcom/zhangdan/app/activities/main/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zhangdan/app/activities/main/d/b;->a:I

    iput p2, p0, Lcom/zhangdan/app/activities/main/d/b;->b:I

    iput p3, p0, Lcom/zhangdan/app/activities/main/d/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/d/b;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/d/b;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/d/b;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/d/b;->c:I

    return v0
.end method
