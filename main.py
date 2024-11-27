from fastapi import FastAPI
import uvicorn
from app.controllers.user_controller import UserController
from app.controllers.items_controller import ItemsController
from app.services.user_service import UserService
from app.services.item_service import ItemService
from app.repositories.user_repository import UserRepository
from app.repositories.item_repository import ItemRepository

app = FastAPI()

# Instâncias dos repositórios
user_repository = UserRepository()
item_repository = ItemRepository()

# Instâncias dos services
user_service = UserService(user_repository)
item_service = ItemService(item_repository)
# Instâncias dos controladores
user_controller = UserController(repository=user_repository)
items_controller = ItemsController(repository=item_repository)

# Incluindo as rotas dos controladores
app.include_router(user_controller.router)
app.include_router(items_controller.router)


@app.get("/")
async def root():
    return {"message": "API is running"}

# Início do servidor
if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload=True)