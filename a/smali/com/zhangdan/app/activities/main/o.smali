.class final Lcom/zhangdan/app/activities/main/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/receiver/i;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/o;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new bill count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/o;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->e()V

    return-void
.end method
