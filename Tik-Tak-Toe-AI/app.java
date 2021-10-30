import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        String board[][] = new String[3][3];
        // write your code here
        initaizeBoad(board);
        //printBoard(board);
        //board[1][0] = "X";
        //printBoard(board);
        while (isBoardEmpty(board)) {
            printBoard(board);
            if (!isWinner(board, "O")&&!isWinner(board,"X")) {
                playerMove(board);
                //printBoard(board);
            } else {
                System.out.println("Computer Has Won!! Good Game!");
                break;
            }

            if (!isWinner(board, "X")&&!isWinner(board, "O")) {
                computerMove(board);
                //printBoard(board);
            } else {
                System.out.println("Player Has Won!! Good Game!");
                break;
            }
            System.out.println("\n----------------------------\n");
        }

        //System.out.println(isWinner(board,"X"));
    }

    private static void printBoard(String[][] board) {
        System.out.println(board[0][0] + " | " + board[0][1] + " | " + board[0][2]);
        System.out.println("---------");
        System.out.println(board[1][0] + " | " + board[1][1] + " | " + board[1][2]);
        System.out.println("---------");
        System.out.println(board[2][0] + " | " + board[2][1] + " | " + board[2][2]);
    }

    private static void initaizeBoad(String[][] board) {
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board.length; j++) {
                board[i][j] = " ";
            }
        }
    }

    private static boolean isBoardEmpty(String[][] board) {
        int count = 0;
        for (String[] aBoard : board) {
            for (int j = 0; j < board.length; j++) {
                if (aBoard[j].equals(" ")) {
                    count++;
                }
            }
        }
        //System.out.println(count);
        return count > 0;
    }

    private static boolean isWinner(String[][] board, String player) {
        return (board[0][0].equals(player) && board[0][1].equals(player) && board[0][2].equals(player)) ||        //top layer row
                (board[1][0].equals(player) && board[1][1].equals(player) && board[1][2].equals(player)) ||//middle layer row
                (board[2][0].equals(player) && board[2][1].equals(player) && board[2][2].equals(player)) ||//bottom layer row
                (board[0][0].equals(player) && board[1][0].equals(player) && board[2][0].equals(player)) ||//left layer column
                (board[1][0].equals(player) && board[1][1].equals(player) && board[1][2].equals(player)) ||//middle layer column
                (board[2][0].equals(player) && board[2][1].equals(player) && board[2][2].equals(player)) ||//right layer column
                (board[0][0].equals(player) && board[1][1].equals(player) && board[2][2].equals(player)) ||//diagonal to right direction
                (board[2][0].equals(player) && board[1][1].equals(player) && board[0][2].equals(player));

    }

    private static void insertPosition(String[][] board, int position, String player) {
        switch (position) {
            case 7:
                board[0][0] = player;
                break;
            case 8:
                board[0][1] = player;
                break;
            case 9:
                board[0][2] = player;
                break;
            case 4:
                board[1][0] = player;
                break;
            case 5:
                board[1][1] = player;
                break;
            case 6:
                board[1][2] = player;
                break;
            case 1:
                board[2][0] = player;
                break;
            case 2:
                board[2][1] = player;
                break;
            case 3:
                board[2][2] = player;
                break;
        }
    }

    private static boolean isPositionOccupied(String[][] board, int position) {
        switch (position) {
            case 7:
                return board[0][0].equals(" ");
            //break;
            case 8:
                return board[0][1].equals(" ");
            //break;
            case 9:
                return board[0][2].equals(" ");
            // break;
            case 4:
                return board[1][0].equals(" ");
            //break;
            case 5:
                return board[1][1].equals(" ");
            //break;
            case 6:
                return board[1][2].equals(" ");
            //break;
            case 1:
                return board[2][0].equals(" ");
            //break;
            case 2:
                return board[2][1].equals(" ");
            //break;
            case 3:
                return board[2][2].equals(" ");
            //break;
        }

        return false;
    }

    private static void playerMove(String[][] board) {
        System.out.println("Player turn enter the position in range 0-9");
        Scanner in = new Scanner(System.in);
        try {
            int position = in.nextInt();
            if (isBoardEmpty(board)) {
                if (position > 0 && position < 10) {
                    if (isPositionOccupied(board,position)){
                        insertPosition(board, position, "X");
                        printBoard(board);
                    }else {
                        System.out.println(position+" Position is already occupied");
                        playerMove(board);
                    }

                } else {
                    System.out.println("Please Enter in rage of 1-9");
                }
            }
        } catch (Exception e) {
            System.out.println("Enter only integer in range 1-9 :");
        }
    }

    private static void computerMove(String[][] board) {
        List<Integer> possiblePosition = new LinkedList<>();
        for (int i = 0; i < board.length; i++)
            for (int j = 0; j < board.length; j++) {
                if (board[i][j].equals(" ")) {
                    possiblePosition.add(getPosition(i, j));
                }
            }
        //int move = getConner(possiblePosition);
        if (getWinningPosition(board,possiblePosition)!=0){
            insertPosition(board,getWinningPosition(board,possiblePosition),"O");
        }
        else if (getConner(possiblePosition) != 0) {
            insertPosition(board, getConner(possiblePosition), "O");
        } else if (possiblePosition.contains(5))
            insertPosition(board, 5, "O");
        else if (getEdges(possiblePosition) != 0)
            insertPosition(board, getEdges(possiblePosition), "O");

        //insertPosition(board,getWinningPosition(board,possiblePosition),"O");


    }

    private static int getEdges(List<Integer> possiblePosition) {
        int connerEdge[] = {2, 6, 4, 8};
        List<Integer> getConnerEdge = new LinkedList<>();
        for (int i : connerEdge) {
            if (possiblePosition.contains(i)) {
                getConnerEdge.add(possiblePosition.get(possiblePosition.indexOf(i)));
            }
        }
        Random random = new Random();
        if (getConnerEdge.size() > 0)
            return getConnerEdge.get(random.nextInt(getConnerEdge.size()));
        else
            return 0;

    }

    private static int getPosition(int i, int j) {
        //Top layer row
        if (i == 0 && j == 0)
            return 7;
        else if (i == 0 && j == 1)
            return 8;
        else if (i == 0 && j == 2)
            return 9;
            //middle layer column
        else if (i == 1 && j == 0)
            return 4;
        else if (i == 1 && j == 1)
            return 5;
        else if (i == 1 && j == 2)
            return 6;
            //bottom layer row
        else if (i == 2 && j == 0)
            return 1;
        else if (i == 2 && j == 1)
            return 2;
        else //if (i==2 && j==2)
            return 3;
    }

    private static int getWinningPosition(String[][] board, List<Integer> possiblePosition) {
        String[][] newBoard;
        int returnPosition = 0;
        newBoard = board.clone();
        List<String> playerList = new LinkedList<>();
        playerList.add("O");
        playerList.add("X");
        outerLoop:
            for (int position : possiblePosition) {
                for (String player : playerList) {
                    insertPosition(newBoard, position, player);
                    //printBoard(newBoard);
                if (isWinner(newBoard, player)) {
                    //System.out.println("POSITION "+position+" PLAYER "+player);
                    insertPosition(board,position," ");
                    returnPosition = position;
                    break outerLoop;
                }else {
                    //System.out.println("Clone");
                    insertPosition(newBoard,position," ");
                }
            }
        }
        //printBoard(newBoard);
        return returnPosition;
    }

    private static int getConner(List<Integer> possiblePosition) {
        int connerEdge[] = {1, 3, 7, 9};
        List<Integer> getConnerEdge = new LinkedList<>();
        for (int i : connerEdge) {
            if (possiblePosition.contains(i)) {
                getConnerEdge.add(possiblePosition.get(possiblePosition.indexOf(i)));
            }
        }
        Random random = new Random();
        if (getConnerEdge.size() > 0)
            return getConnerEdge.get(random.nextInt(getConnerEdge.size()));
        else
            return 0;
    }

}
