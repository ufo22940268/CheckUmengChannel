.class final Lcom/slidingmenu/lib/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/slidingmenu/lib/SlidingMenu;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/SlidingMenu;I)V
    .locals 0

    iput-object p1, p0, Lcom/slidingmenu/lib/j;->a:Lcom/slidingmenu/lib/SlidingMenu;

    iput p2, p0, Lcom/slidingmenu/lib/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "changing layerType. hardware? "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/slidingmenu/lib/j;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/slidingmenu/lib/j;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/slidingmenu/lib/j;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/j;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/slidingmenu/lib/j;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/j;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/j;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/slidingmenu/lib/j;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
