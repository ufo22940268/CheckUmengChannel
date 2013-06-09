.class final Lcom/tencent/plus/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/k;


# direct methods
.method constructor <init>(Lcom/tencent/plus/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/m;->a:Lcom/tencent/plus/k;

    iget-object v0, v0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->g(Lcom/tencent/plus/ImageActivity;)V

    return-void
.end method
