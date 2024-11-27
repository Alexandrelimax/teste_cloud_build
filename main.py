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
user_service = UserService(repository=user_repository)
item_service = ItemService(repository=item_repository)
# Instâncias dos controladores
user_controller = UserController(service=user_service)
items_controller = ItemsController(service=item_service)

# Incluindo as rotas dos controladores
app.include_router(user_controller.router)
app.include_router(items_controller.router)


@app.get("/")
async def root():
    return {"message": "API is running"}

# Início do servidor
if __name__ == "__main__":
    uvicorn.run("main:app", host="127.0.0.1", port=8000, reload=True)