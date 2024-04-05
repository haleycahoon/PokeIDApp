<!------------------------------------------------------------------------------------------------>
<template>
  <div class="grocery-list">
    <h1>Secret List of Secret Things:</h1>
    <ul>
      <li v-for="item in groceryItems" :key="item.id" class="grocery-item">
        <span>{{ item.name }}</span>
        <button @click="deleteItem(item.id)" class="delete-button">
          Delete
        </button>
      </li>
    </ul>
    <form @submit.prevent="addItem" class="add-form">
      <input
        type="text"
        v-model="newItem"
        placeholder="Add task"
        class="add-input"
      />
      <button type="submit" :disabled="!newItem.trim()" class="add-button">
        Add
      </button>
    </form>
    <div class="action-buttons">
      <button @click="saveList" class="action-button">Save List</button>
      <button @click="loadList" class="action-button">Load List</button>
    </div>
  </div>
</template>
<!------------------------------------------------------------------------------------------------>
<script>
import db from "./firebaseConfig";
import {
  collection,
  addDoc,
  getDocs,
  deleteDoc,
  doc,
} from "firebase/firestore";
export default {
  data() {
    return {
      groceryItems: [],
      newItem: "",
    };
  },
  created() {
    this.loadList();
  },
  methods: {
    async fetchGroceryItems() {
      try {
        const groceryItemsCollection = collection(db, "groceryItems");
        const querySnapshot = await getDocs(groceryItemsCollection);
        this.groceryItems = querySnapshot.docs.map((doc) => ({
          id: doc.id,
          ...doc.data(),
        }));
      } catch (error) {
        console.error("Error fetching grocery items:", error);
      }
    },
    async addItem() {
      try {
        if (this.newItem.trim() === "") {
          // prevent adding blank entries
          return;
        }
        const groceryItemsCollection = collection(db, "groceryItems");
        await addDoc(groceryItemsCollection, { name: this.newItem.trim() });
        this.newItem = "";
        this.fetchGroceryItems();
      } catch (error) {
        console.error("Error adding grocery item:", error);
      }
    },
    async deleteItem(itemId) {
      try {
        const groceryItemsCollection = collection(db, "groceryItems");
        await deleteDoc(doc(groceryItemsCollection, itemId));
        this.fetchGroceryItems();
      } catch (error) {
        console.error("Error deleting grocery item:", error);
      }
    },
    saveList() {
      localStorage.setItem("groceryList", JSON.stringify(this.groceryItems));
    },
    loadList() {
      const savedList = localStorage.getItem("groceryList");
      if (savedList) {
        const parsedList = JSON.parse(savedList);
        this.groceryItems.splice(0, this.groceryItems.length, ...parsedList);
      }
    },
  },
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
.grocery-list {
  font-family: Arial, sans-serif;
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f9f9f9;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
ul {
  padding: 0;
  list-style: none;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.grocery-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 8px;
  background-color: #fff;
  padding: 10px;
  border-radius: 5px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.delete-button {
  border: none;
  background-color: #dc3545;
  color: white;
  padding: 6px 12px;
  border-radius: 3px;
  cursor: pointer;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.delete-button:hover {
  background-color: #c82333;
}
.add-form {
  display: flex;
  margin-top: 20px;
}
.add-input {
  flex: 1;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
  margin-right: 8px;
}
.add-button {
  border: none;
  background-color: #007bff;
  color: white;
  padding: 8px 16px;
  border-radius: 3px;
  cursor: pointer;
}
.add-button:hover {
  background-color: #0056b3;
}
.action-buttons {
  display: flex;
  justify-content: flex-end;
  margin-top: 20px;
}
.action-button {
  border: none;
  background-color: #28a745;
  color: white;
  padding: 8px 16px;
  border-radius: 5px;
  cursor: pointer;
  margin-left: 20px;
}
.action-button:hover {
  background-color: #218838;
}
</style>